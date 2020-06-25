package com.pets.web.models;

public class Cat extends Animal implements Pet{

	public Cat(String nombre, String raza, int peso) {
		super(nombre, raza, peso);
		// TODO Auto-generated constructor stub
	}
	public String showAffection() {
		return "Your "+this.getRaza()+" cat: "+this.getNombre()+ " looked"+" your for some affection. You think";
	}

}
