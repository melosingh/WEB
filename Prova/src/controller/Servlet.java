package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ImmagineDao;
import dao.LoginDao;
import dao.RegistrazioneDao;
import model.Immagine;
import model.Registrazione;
import model.UtenteLoggato;


@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 2L;
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		///Prova/Servlet?action=homePage
		if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("caricaImmagini"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/FormCaricaImmagini.jsp");
			rd.forward(request, response);
			return ;
		}
		if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("account"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Account.jsp");
			rd.forward(request, response);
			return ;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("stakealto"))
		{
			System.out.println("SONO ENTRATO IN STAKE ALTO");
			ArrayList immaginiMultipleCampionati=new ArrayList(ImmagineDao.getInstance().trovaMultipleCampionati());
			
			
			 for(int i=0;i<immaginiMultipleCampionati.size();i++)
				 System.out.println(immaginiMultipleCampionati.get(i).toString());
			 
			request.getSession().setAttribute("immaginiMultipleCampionati", immaginiMultipleCampionati); 
			request.getSession().setAttribute("indice",1); 

			
			RequestDispatcher rd = request.getRequestDispatcher("/StakeAlto.jsp");
			rd.forward(request, response);
			return ;
		}
		else if(request.getParameter("action")!=null &&request.getParameter("action").equalsIgnoreCase("homePage"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
			rd.forward(request, response);
			return ;
		}
		else if(request.getParameter("action")!=null &&request.getParameter("action").equalsIgnoreCase("reindirizza"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Registrazione.jsp");
				rd.forward(request, response);
				return ;
		}
		else if(request.getParameter("action")!=null &&request.getParameter("action").equalsIgnoreCase("stake"))
		  {
			System.out.println("Entro nella servlet con stake ");
			Immagine imgStakeAlto= ImmagineDao.getInstance().getUltimoStakeAlto();
			Immagine imgStakeMedio=ImmagineDao.getInstance().getUltimoStakeMedio();
			Immagine imgStakeBasso=ImmagineDao.getInstance().getUltimoStakeBasso();
			request.getSession().setAttribute("imgStakeAlto", imgStakeAlto); 
			request.getSession().setAttribute("imgStakeMedio", imgStakeMedio); 
			request.getSession().setAttribute("imgStakeBasso", imgStakeBasso); 
		   RequestDispatcher rd = request.getRequestDispatcher("/Stake.jsp");
		   rd.forward(request, response);
		   return ;
		  }
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("multiple"))
		{
			/* ArrayList immaginiMultipleChampions=new ArrayList(ImmagineDao.getInstance().trovaMultipleChampions());
			 for(int i=0;i<immaginiMultipleChampions.size();i++)
				 System.out.println(immaginiMultipleChampions.get(i).toString());
			request.getSession().setAttribute("immaginiMultipleChampions", immaginiMultipleChampions);*/
			ArrayList<Immagine> immaginiMultiple =new ArrayList(ImmagineDao.getInstance().trovaMultiple());
			request.getSession().setAttribute("immaginiMultiple", immaginiMultiple); 
			request.getSession().setAttribute("indiceMultiple",0);
			RequestDispatcher rd = request.getRequestDispatcher("/Multiple.jsp");
			rd.forward(request, response);
			return ;
		}
		
		else if(request.getParameter("action")!=null &&request.getParameter("action").equalsIgnoreCase("marcatori"))
		{
			ArrayList immaginiMarcatori=new ArrayList(ImmagineDao.getInstance().trovaMarcatori());
			request.getSession().setAttribute("immaginiMarcatori", immaginiMarcatori); 
			request.getSession().setAttribute("indice",0); 
			System.out.println("ENTRO in Marcatori all'interno della Servlet");
			RequestDispatcher rd = request.getRequestDispatcher("/Marcatori.jsp");
					rd.forward(request, response);
					return ;
		}
		
		else if(request.getParameter("action")!=null &&request.getParameter("action").equalsIgnoreCase("listoni"))
		{
			ArrayList immaginiListoni=new ArrayList(ImmagineDao.getInstance().trovaListoni());
			request.getSession().setAttribute("immaginiListoni", immaginiListoni); 
			request.getSession().setAttribute("indiceListoni",0); 
			
			RequestDispatcher rd = request.getRequestDispatcher("/Listone.jsp");
					rd.forward(request, response);
					return ;
		}
		 
		RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
		
		rd.forward(request, response);
				
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println(request.getParameter("key"));
		
		HttpSession session = request.getSession();
		if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("login"))
		{
			String name=request.getParameter("username");
			String pass=request.getParameter("userpass");
            
			System.out.println(name);
			System.out.println(pass);
			
			if(LoginDao.getInstance().validate(name, pass))
			{
				
				UtenteLoggato utente=new UtenteLoggato(LoginDao.getInstance().getUtente(name, pass));
				if(utente.getEmail().equals("angeloboa.melito@gmail.com"))
					session.setAttribute("admin", true);
				session.setAttribute("UtenteLoggato", utente);
			  
				session.setAttribute("Loggato", true);
				RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
				
				rd.forward(request, response);
				return;
				}
			
			else
				response.sendRedirect("error.html");
			return;
		}
		else if(request.getParameter("key")!=null && request.getParameter("key").equalsIgnoreCase("caricaimmagini"))
		{
			String id =request.getParameter("Id");
			String path=request.getParameter("Img");
			String descrizione=request.getParameter("rubrica");
			String quota=request.getParameter("Quota");
			
			Immagine img=new Immagine(id,path,descrizione,quota);
			if(descrizione.equalsIgnoreCase("campionati") || descrizione.equalsIgnoreCase("champions"))
			{ImmagineDao.getInstance().caricaMultiple(img);}
			
			else if(descrizione.equalsIgnoreCase("listoni"))
			{ImmagineDao.getInstance().caricaListoni(img);}
			
			else if(descrizione.equalsIgnoreCase("marcatori"))
			{ImmagineDao.getInstance().caricaMarcatori(img);}
				
			RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
			
			rd.forward(request, response);
			return;
			
		}
		else if(request.getParameter("key")!=null && request.getParameter("key").equalsIgnoreCase("registrati"))
		{
			System.out.println("ENTROOOOOOOOOOOOOOOOOOO");
		//System.out.println(request.getParameter("Nome")+request.getParameter("Cognome")+request.getParameter("Username")+request.getParameter("Password"));
		Registrazione registrazione=new Registrazione (request.getParameter("Nome"),request.getParameter("Cognome"),request.getParameter("Email"),request.getParameter("Password"));
		RegistrazioneDao.getInstance().add(registrazione);
		RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
		
		rd.forward(request, response);
		return;
			}
		else if(request.getParameter("key")!=null && request.getParameter("key").equalsIgnoreCase("logout"))
		{
			System.out.println("ENTRO IN LOGOUT");
			session.setAttribute("Loggato", false);
			session.setAttribute("admin", false);
		//System.out.println(request.getParameter("Nome")+request.getParameter("Cognome")+request.getParameter("Username")+request.getParameter("Password"));
	//	Registrazione registrazione=new Registrazione (request.getParameter("Nome"),request.getParameter("Cognome"),request.getParameter("Email"),request.getParameter("Password"));
		//RegistrazioneDao.getInstance().add(registrazione);
		RequestDispatcher rd = request.getRequestDispatcher("/paginaIniziale.jsp");
		
		rd.forward(request, response);
		return;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoMultipleS"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiMultiple");
			 
			int indice = (int) request.getSession().getAttribute("indiceMultiple");
			
			if(indice>0)
				indice--;
			request.getSession().setAttribute("indiceMultiple", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoMultipleD"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiMultiple");
			
			int indice = (int) request.getSession().getAttribute("indiceMultiple");
			
		
			if(indice<X.size()-1)
				indice++;
			request.getSession().setAttribute("indiceMultiple", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoListoniD"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiListoni");
			 for(int i=0;i<X.size();i++)
				 System.out.println(X.get(i).toString());
			int indice = (int) request.getSession().getAttribute("indiceListoni");
			
		
			if(indice<X.size()-1)
				indice++;
			request.getSession().setAttribute("indiceListoni", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoListoniS"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiListoni");
			 
			int indice = (int) request.getSession().getAttribute("indiceListoni");
			
			if(indice>0)
				indice--;
			request.getSession().setAttribute("indiceListoni", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
			
			
		
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoD"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiMarcatori");
			 for(int i=0;i<X.size();i++)
				 System.out.println(X.get(i).toString());
			int indice = (int) request.getSession().getAttribute("indice");
			
		
			if(indice<X.size()-1)
				indice++;
			request.getSession().setAttribute("indice", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
		else if(request.getParameter("action")!=null && request.getParameter("action").equalsIgnoreCase("scorrimentoS"))
		{
			System.out.println("Entro nella servlet con scorrimento !!!");
			
			ArrayList<Immagine> X = (ArrayList<Immagine>) request.getSession().getAttribute("immaginiMarcatori");
			 
			int indice = (int) request.getSession().getAttribute("indice");
			
			if(indice>0)
				indice--;
			request.getSession().setAttribute("indice", indice);
		
			System.out.println(indice);
			response.getWriter().print("<img name=\"multipla\" src= \""+X.get(indice).getPath()+ "\"  class=\"img-fluid\" >");
			response.getWriter().print((indice+1)+"/"+X.size());
			return;
		}
			
			
		}
	}
