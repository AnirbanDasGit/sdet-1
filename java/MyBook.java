package javaActivity5;

public class MyBook extends Book {
	
	public void setTitle(String s) {
        title = s;
    }

	public static void main(String[] args) {
		
		
		// TODO Auto-generated method stub
		
        String title = "Harry Potter and the cursed child";
        
        Book newNovel = new MyBook();
        newNovel.setTitle(title);
        
        System.out.println("The title is: " + newNovel.getTitle());

	}

}
