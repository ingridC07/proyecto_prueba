package controlador_tienda;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.google.gson.Gson;

import modelo_tienda.LineasDAO;
import modelo_tienda.LineasDTO;

/**
 * Servlet implementation class Servletgestionlineas
 */
@WebServlet("/Servletgestionlineas")
public class Servletgestionlineas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletgestionlineas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String nombrelinea;
		int codigo;
		LineasDTO lindto;
		LineasDAO lindao;
		LineasDTO registro;
		
		PrintWriter out= response.getWriter();
		
		//consultar todos los datos//
		
		JOptionPane.showMessageDialog(null,"Entrando a json");
		ArrayList <LineasDTO>lista = new ArrayList <>();
		lindao= new LineasDAO();
		lista=lindao.consultageneral();
		JOptionPane.showMessageDialog(null,lista.size());
		Gson gson=new Gson();
		out.print(lista);
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String nombrelinea;
		int codigo;
		LineasDTO lindto;
		LineasDAO lindao;
		LineasDTO registro;
		
		PrintWriter out= response.getWriter();
	
	//consultar crud//
		
	if(request.getParameter("btncon")!=null) {
		
		
		String nom;
		int cod;
		codigo=Integer.parseInt(request.getParameter("codline"));
		lindto=new LineasDTO(codigo);
		lindao=new LineasDAO();
		registro=lindao.consultar(lindto);
		cod=registro.getCodigoline();
		nom=registro.getNombrelinea();
		response.sendRedirect("clase1.jsp?co="+cod+"&&no="+nom);
		}
	//actualizar crud//
	
	if (request.getParameter("btnact")!=null) {
		int dat;
		nombrelinea=request.getParameter("nomlin");
		codigo=Integer.parseInt(request.getParameter("codline"));
		lindto= new LineasDTO(codigo,nombrelinea);
		lindao=new LineasDAO();
		dat=lindao.actualizar(lindto);
		
		if(dat>0) {
			JOptionPane.showMessageDialog(null, "Linea actualizada");
			response.sendRedirect("clase1.jsp");
			
		}else {
			JOptionPane.showMessageDialog(null, "Linea  no actualizada");
			
		}
		
		}
	
	//eliminar crud//
	
	if(request.getParameter("btneli")!=null) {
		int dat;
		codigo=Integer.parseInt(request.getParameter("codline"));
		lindto=new LineasDTO(codigo);
		lindao= new LineasDAO();
		dat=lindao.eliminar(lindto);
		
		if(dat>0) {
			JOptionPane.showMessageDialog(null, "Linea eliminada");
			response.sendRedirect("clase1.jsp");
			
		}else {
			JOptionPane.showMessageDialog(null, "Linea no eliminada");
			response.sendRedirect("clase1.jsp");
		}

	}

}

}
