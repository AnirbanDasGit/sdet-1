package javaActivity10;

import java.util.HashSet;

public class HashSetPractice {
	
	
    public static void main(String[] args) {
	
        HashSet<String> hs = new HashSet<String>();
	
        hs.add("A");	
        hs.add("N");	
        hs.add("I");	
        hs.add("R");	
        hs.add("B");	
        hs.add("A");
        hs.add("N");
	
        System.out.println("Original HashSet: " + hs);        
	    System.out.println("Size of HashSet: " + hs.size());	
        System.out.println("Removing A from HashSet: " + hs.remove("A"));

        if(hs.remove("O")) {
	
        	System.out.println("O is removed from the Set");
	
        } else {
	
        	System.out.println("O is not present in the Set");
	
        }
	
        System.out.println("Checking if M is present: " + hs.contains("N"));
        System.out.println("Updated HashSet: " + hs);
	
    }

}
