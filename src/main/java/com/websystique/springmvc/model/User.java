package com.websystique.springmvc.model;

public class User {

	private long id;
	
	private String nombre;
	
	private String descripcion;
	
	private Double chica;
	
	private Double grande;
	
	public User(){
		id=0;
	}
	
	public User(long id, String nombre, String descripcion, Double chica, Double grande){
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.chica = chica;
		this.grande = grande;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Double getChica() {
		return chica;
	}

	public void setChica(Double chica) {
		this.chica = chica;
	}

	public Double getGrande() {
		return grande;
	}

	public void setGrande(Double grande) {
		this.grande = grande;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof User))
			return false;
		User other = (User) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", chica=" + chica
				+ ", grande=" + grande + "]";
	}	
}
