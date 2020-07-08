package com.example.web.model;

import java.util.ArrayList;

public class Team {
	
	ArrayList<Player> player;
	String nameTeam;

	public Team(String nameTeam) {
		super();
		player = new ArrayList<Player>();
		this.nameTeam = nameTeam;
	}
	public void newPlayer(String name, String lastName, int age) {
		Player newPlayer = new Player(name, lastName, age);
		player.add(newPlayer);
	}
	public void deletePlayer(int id) {
		this.player.remove(id);
	}
	public String getNameTeam() {
		return nameTeam;
	}

	public void setNameTeam(String nameTeam) {
		this.nameTeam = nameTeam;
	}
	
	

}
