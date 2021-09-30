package modelo_tienda;

public class LineasDTO {
	private int codigoline;
	private String nombrelinea;
	
	
	public LineasDTO(int codigoline, String nombrelinea) {
		super();
		this.codigoline = codigoline;
		this.nombrelinea = nombrelinea;
	}
	
	


	public LineasDTO(int codigoline) {
		this.codigoline = codigoline;
	}




	public int getCodigoline() {
		return codigoline;
	}


	public void setCodigoline(int codigoline) {
		this.codigoline = codigoline;
	}


	public String getNombrelinea() {
		return nombrelinea;
	}


	public void setNombrelinea(String nombrelinea) {
		this.nombrelinea = nombrelinea;
	} 
	
	

}
