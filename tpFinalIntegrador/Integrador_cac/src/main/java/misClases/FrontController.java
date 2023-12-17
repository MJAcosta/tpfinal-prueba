package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion=null;

        TicketDAO ticketDAO=null;

        try
        {
            ticketDAO= new TicketDAO();
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }


        RequestDispatcher dispatcher=null;
 
        accion=request.getParameter("accion");

        if(accion==null||accion.isEmpty())
        {
            dispatcher=request.getRequestDispatcher("vistas/index.jsp");
        }
        else if(accion.equals("registrar"))
        {
            dispatcher=request.getRequestDispatcher("vistas/tickets.jsp");
        }
        else if(accion.equals("backoffice"))
        {
            dispatcher=request.getRequestDispatcher("vistas/backOffice.jsp");
        }
        else if(accion.equals("volver"))
        {
            dispatcher=request.getRequestDispatcher("vistas/index.jsp");
        }
        
        else if(accion.equals("insert"))
        {
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        String mail= request.getParameter("mail");
        int cantidad= Integer.parseInt(request.getParameter("cantidad"));
        int categoria= Integer.parseInt(request.getParameter("categoria"));

        Ticket ticket=new Ticket(0,nombre,apellido,mail,cantidad,categoria,200);
        ticketDAO.insertarTicket(ticket);
        dispatcher=request.getRequestDispatcher("vistas/index.jsp");
        ;
        }

        dispatcher.forward(request,response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
