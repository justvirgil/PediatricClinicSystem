package selenium.demo;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Immunization {

	public static void main(String[] args)throws InterruptedException {
		
		System.setProperty("webdriver.chrome.driver", "E:\\Eclipse\\Google\\New folder\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		driver.get("http://drjoshypediatrics.somee.com/ImmunizationEntry.aspx");
		driver.manage().window().maximize();
		try 
		{
			//Patient
			
			js.executeScript("alert('TestCase :To check if required validator appears if patient code is empty.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ImageButton1")).click();	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			//
			
			js.executeScript("alert('TestCase :To check if patient code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PatientCodeTextBox")).sendKeys("PAT11");
			driver.findElement(By.id("ImageButton1")).click();	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//
			driver.findElement(By.id("PatientCodeTextBox")).clear();
			driver.findElement(By.id("PatientCodeTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("ImageButton1")).click();
			Thread.sleep(3000);						
			//endPatient
					
			 
			// empty vacc code
			js.executeScript("alert('TestCase :To check if required validator appears if vaccine code, shot number or reaction is empty')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ImageButton2")).click();
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			//
			js.executeScript("alert('TestCase :To check if Vaccine Code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("VaccCode")).sendKeys("VAC001");
			driver.findElement(By.id("ShotNum")).sendKeys("2");
			driver.findElement(By.id("Reaction")).sendKeys("N/A");
			driver.findElement(By.id("ImageButton2")).click();
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();			
			
			//
			driver.findElement(By.id("VaccCode")).clear();
			driver.findElement(By.id("ShotNum")).clear();
			driver.findElement(By.id("Reaction")).clear();
			driver.findElement(By.id("VaccCode")).sendKeys("VAC01");
			driver.findElement(By.id("ShotNum")).sendKeys("2");
			driver.findElement(By.id("Reaction")).sendKeys("N/A");
			driver.findElement(By.id("ImageButton2")).click();
			Thread.sleep(3000);					
			//endVaccine
			
			//PrepBy
			js.executeScript("alert('TestCase :To check if prepared by text box only accepts “staff” position and employee code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PrepBy")).sendKeys("E200");
			driver.findElement(By.id("SearchPrep")).click();
			Thread.sleep(3000);	
			
			js.executeScript("alert('Result : Employee not found')");	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//
			driver.findElement(By.id("PrepBy")).clear();
			driver.findElement(By.id("PrepBy")).sendKeys("E2020");
			driver.findElement(By.id("SearchPrep")).click();
			Thread.sleep(3000);	
			//endPrepby
			
			//Exam by
			js.executeScript("alert('TestCase :To check if immunized by text box only accepts “doctor” position and employee code exists')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
		
			driver.findElement(By.id("ExamBy")).sendKeys("E200");
			driver.findElement(By.id("SearchEx")).click();		
			Thread.sleep(3000);	
			
			js.executeScript("alert('Result : Employee not found')");	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//		
			driver.findElement(By.id("ExamBy")).clear();
			driver.findElement(By.id("ExamBy")).sendKeys("E2001");
			driver.findElement(By.id("SearchEx")).click();
			Thread.sleep(3000);	
			//endExamby
			
			
			//Immunization
			js.executeScript("alert('TestCase : To check if required field validator appears during saving if some entries are empty.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
		
			driver.findElement(By.id("ImmuCode")).sendKeys("IMMU0");
			Thread.sleep(3000);		
			
			js.executeScript("window.scrollBy(0, 3000)");
			driver.findElement(By.id("SaveButton")).click();	
			Thread.sleep(3000);				
			
			js.executeScript("alert('Result : Some Fields Are Missing')");	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//
			js.executeScript("alert('TestCase : To check if Immunization No. Already exists.(')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ImmuCode")).clear();
			driver.findElement(By.id("ImmuCode")).sendKeys("IMMU01321");		
			driver.findElement(By.id("BodyTemp")).sendKeys("36");
			Thread.sleep(3000);
			
			js.executeScript("window.scrollBy(0, 3000)");
			driver.findElement(By.id("SaveButton")).click();
			Thread.sleep(3000);				
			driver.switchTo().alert().accept();
			
			//
			js.executeScript("alert('TestCase : To check if entries can be saved')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
						
			driver.findElement(By.id("ImmuCode")).sendKeys("IMMU01234");
			Thread.sleep(3000);	
			
			driver.findElement(By.id("PatientCodeTextBox")).clear();
			driver.findElement(By.id("PatientCodeTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("ImageButton1")).click();
			Thread.sleep(3000);						
			
			driver.findElement(By.id("VaccCode")).sendKeys("VAC01");
			driver.findElement(By.id("ShotNum")).sendKeys("2");
			driver.findElement(By.id("Reaction")).sendKeys("N/A");
			driver.findElement(By.id("ImageButton2")).click();
			Thread.sleep(3000);				
			
			driver.findElement(By.id("PrepBy")).clear();
			driver.findElement(By.id("PrepBy")).sendKeys("E2020");
			driver.findElement(By.id("SearchPrep")).click();
			Thread.sleep(3000);	
			
			driver.findElement(By.id("ExamBy")).clear();
			driver.findElement(By.id("ExamBy")).sendKeys("E2001");
			driver.findElement(By.id("SearchEx")).click();
			Thread.sleep(3000);	
			
			driver.findElement(By.id("BodyTemp")).sendKeys("35");
			Thread.sleep(3000);		
			
			js.executeScript("window.scrollBy(0, 3000)");
			driver.findElement(By.id("SaveButton")).click();
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			//end immunization
			
			
			//Clear
			js.executeScript("alert('TestCase : To check if clear button removes all inputs')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PatientCodeTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("ImageButton1")).click();
			Thread.sleep(3000);
			
			js.executeScript("window.scrollBy(0, 3000)");
			driver.findElement(By.id("ClearButton")).click();
			Thread.sleep(3000);		
			
			//end clear
			
		}
		catch(Exception e) 
		{
			System.out.print(e);
		}		
	}
}

