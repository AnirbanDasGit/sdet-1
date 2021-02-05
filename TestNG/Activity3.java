package testNGTests;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class Activity3 {
    WebDriver driver;
	
    @BeforeClass
    public void beforeClass() {
    	System.setProperty("webdriver.chrome.driver",
				"C:\\Users\\AnirbanDas\\Downloads\\chromedriver_win32_new\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();

		// to maximize browser window
		driver.manage().window().maximize();
		
        //Open browser
		driver.get("https://www.training-support.net/selenium/login-form");
		System.out.println("BeforeClass done");
	
    }
	
 
	
    @Test
	public void loginTest() {
    	System.out.println("inside login");
	
        /*//Find the username and password fields
	
        WebElement username = driver.findElement(By.id("username"));
	
        WebElement password = driver.findElement(By.id("password"));
	
        
	
        //Enter credentials
	
        username.sendKeys("admin");
	
        password.sendKeys("password");*/
    	
    	driver.findElement(By.id("username")).sendKeys("admin");
    	System.out.println("after un");
    	driver.findElement(By.id("password")).sendKeys("Password");
    	System.out.println("after pass");
	
        
	
        //Click login
	
        driver.findElement(By.xpath("//button[text()='Log in']")).click();
	
        
	
        //Read login message
	
        String loginMessage = driver.findElement(By.id("action-confirmation")).getText();
	
        Assert.assertEquals("Welcome Back, admin", loginMessage);
	
    }
	
 
	
    @AfterClass
    public void afterClass() {
	
        //Close browser
    	driver.close();
	
    }

}
