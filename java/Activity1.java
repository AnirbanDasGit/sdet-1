package javaActivity1;

public class Activity1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car c = new Car();
		
        c.make = 2014;
        c.color = "Black";
        c.transmission = "Manual";
    
        
        c.displayCharacterstics();
        c.accelerate();
        c.brake();

	}

}
