package modelo_tienda;

import controlador_tienda.Conexion;

import java.sql.*;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class LineasDAO {
	
Conexion con = new Conexion ();
Connection cnn=con.conexionbd();
PreparedStatement ps;
ResultSet rs;
LineasDTO lineadto;

public boolean insertarlinea(LineasDTO lin) {
	int r; 
	boolean dat=false;
	try {
		ps=cnn.prepareStatement("INSERT INTO (codigo_lineas, nom_lineas) lineas VALUES (?)");
		ps.setString(1,lin.getNombrelinea());
		r=ps.executeUpdate();
		if(r>0) {
			dat=true;
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return dat;
}

public LineasDTO consultar(LineasDTO cod) {
	
	try {
		ps=cnn.prepareStatement("SELECT * FROM lineas WHERE codigo_lineas=?");
		ps.setInt(1, cod.getCodigoline());
		rs=ps.executeQuery();
		if(rs.next()) {
			
		lineadto=new LineasDTO(rs.getInt(1),rs.getString(2));	
			
		}else{
			return null;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return lineadto;
}

public int actualizar (LineasDTO linea) {
	int x=0;
	try {
		ps=cnn.prepareStatement("UPDATE lineas SET nom_lineas=? WHERE codigo_lineas=?");
		ps.setString(1, linea.getNombrelinea());
		ps.setInt(2, linea.getCodigoline());
		x=ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return x;
	
	
	}



public int eliminar (LineasDTO linea) {
	int x=0;
	try {
		ps=cnn.prepareStatement("DELETE FROM lineas WHERE codigo_lineas=?");
		ps.setInt(1, linea.getCodigoline());
		x=ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return x;
}

//mostrar todos los datos//
public ArrayList<LineasDTO> consultageneral(){
	ArrayList<LineasDTO>lista = new ArrayList<LineasDTO>();
	try {
		ps=cnn.prepareStatement("SELECT * FROM lineas");
		rs=ps.executeQuery();
		while(rs.next()) {
			lineadto=new LineasDTO(rs.getInt(1),rs.getString(2));
			lista.add(lineadto);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		
		e.printStackTrace();
		JOptionPane.showMessageDialog(null,e);
	}
	
	
	return lista;
}

}
