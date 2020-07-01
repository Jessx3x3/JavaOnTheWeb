package com.example.view;

import java.util.Random;

public class RandomNumber {

	public static int randomNumber(int a, int b) {
		Random rand = new Random(); 
		return rand.nextInt(b)+a; 
	}
}
