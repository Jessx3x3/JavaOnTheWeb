package com.pets.web.models;

public class Dog extends Animal implements Pet{

	public Dog(String nombre, String raza, int peso) {
		super(nombre, raza, peso);
		// TODO Auto-generated constructor stub
	}
	public String showAffection() {
		
		String cadena; 
		
		if(this.getPeso() > 30 ) {
			cadena = "you created to: "+this.getNombre()+", this dog have more than 30lbs";
		}else {
			cadena = "you created to: "+this.getNombre()+", this dog have less than 30lbs";
		}
		return cadena;
		
	}
}
