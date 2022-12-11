package selenium.demo;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.JavascriptExecutor;

public class SeleniumProj {
	public static void main(String[] args) {
		try {
		System.setProperty("webdriver.chrome.driver", "E:\\Eclipse\\Google\\New folder\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		driver.get("http://www.drjoshypediatrics.somee.com/Precription.aspx/");
		driver.manage().window().maximize();
		
		//error Consultation
		js.executeScript("alert('Test: If Duplicate Consultation Number.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//duplicate consultation
		driver.findElement(By.id("ConNo")).sendKeys("201");
		driver.findElement(By.id("ConsultationSearch")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearB")).click();
		
		//error Medicine test 2 Code
		js.executeScript("alert('Test: If Wrong Medicine Code.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Medicine Code Error
		driver.findElement(By.id("MedCode")).sendKeys("MED50");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("Remarks")).sendKeys("Sample01");
		driver.findElement(By.id("AddButton")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();
		
		//error Medicine test 6 Code
		js.executeScript("alert('Test: If Lacking Medicine Code.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Lacking Medicine Code Error test 6
		driver.findElement(By.id("MedCode")).sendKeys("MED50");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("AddButton")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();
		
		//error Positions Test 5 Code
		js.executeScript("alert('Test: If Wrong Staff Positions Code.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//error Positions Test 5 Code
		driver.findElement(By.id("Prepby")).sendKeys("Staff5");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearB")).click();
		
		//correct Positions Test 5 Code
		js.executeScript("alert('Test: If Correct Staff Positions Code.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//correct Positions Test 5 Code
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("ClearB")).click();
		
		//Empty Fills Test 7 BUTTON
		js.executeScript("alert('Test: For empty fills')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Empty Fills test 7
		driver.findElement(By.id("PrescTextBox")).sendKeys("510");
		driver.findElement(By.id("ConNo")).sendKeys("115");
		driver.findElement(By.id("ConsultationSearch")).click();
		driver.findElement(By.id("MedCode")).sendKeys("MED01");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("Remarks")).sendKeys("DemoRemarks");
		driver.findElement(By.id("AddButton")).click();
		driver.findElement(By.id("SaveB")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();
		
		
		//error Prescription Code test 4
		js.executeScript("alert('Test: Prescription Code already Exist.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//error Prescription Code
		driver.findElement(By.id("PrescTextBox")).sendKeys("501");
		driver.findElement(By.id("ConNo")).sendKeys("115");
		driver.findElement(By.id("ConsultationSearch")).click();
		driver.findElement(By.id("MedCode")).sendKeys("MED01");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("Remarks")).sendKeys("DemoRemarks");
		driver.findElement(By.id("AddButton")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		driver.findElement(By.id("SaveB")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();

		
		
		//SAVE BUTTON test 3
		js.executeScript("alert('Test: For Saving.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//save
		driver.findElement(By.id("PrescTextBox")).sendKeys("512");
		driver.findElement(By.id("ConNo")).sendKeys("115");
		driver.findElement(By.id("ConsultationSearch")).click();
		driver.findElement(By.id("MedCode")).sendKeys("MED01");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("Remarks")).sendKeys("DemoRemarks");
		driver.findElement(By.id("AddButton")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		driver.findElement(By.id("SaveB")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();
		
		//clear Button test 8
		js.executeScript("alert('Test: For Clearing all field.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Clear
		driver.findElement(By.id("PrescTextBox")).sendKeys("510");
		driver.findElement(By.id("ConNo")).sendKeys("115");
		driver.findElement(By.id("ConsultationSearch")).click();
		driver.findElement(By.id("MedCode")).sendKeys("MED01");
		driver.findElement(By.id("Qty")).sendKeys("1");
		driver.findElement(By.id("Remarks")).sendKeys("DemoRemarks");
		driver.findElement(By.id("AddButton")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		driver.findElement(By.id("MedCode")).clear();
		driver.findElement(By.id("Qty")).clear();
		driver.findElement(By.id("Remarks")).clear();
		driver.findElement(By.id("ClearB")).click();
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
	