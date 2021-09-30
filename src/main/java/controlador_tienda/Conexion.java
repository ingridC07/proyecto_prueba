package controlador_tienda;


import java.sql.*;

import javax.swing.JOptionPane;

public class Conexion {

	
	Connection cnn;
	
	public Connection conexionbd() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			try {
				cnn=DriverManager.getConnection("jdbc:mysql://localhost/proyecto","root","");
				JOptionPane.showMessageDialog(null, "Conexion OK");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cnn;
	}	
}
