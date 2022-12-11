package selenium.demo;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.JavascriptExecutor;
public class Billing {
	public static void main(String[] args) {
		try {
		System.setProperty("webdriver.chrome.driver", "E:\\Eclipse\\Google\\New folder\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		driver.get("http://www.drjoshypediatrics.somee.com/Billing.aspx/");
		driver.manage().window().maximize();
	
		//No Billing Number
		js.executeScript("alert('Test: To check if no data inputted in Billing No.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//No Billing Number
		driver.findElement(By.id("PatientCode")).sendKeys("PAT07");
		driver.findElement(By.id("PatientSearchButton")).click();
		driver.findElement(By.id("ImmuCheckBox")).click();
		driver.findElement(By.id("ServiceTypeButton")).click();
		driver.findElement(By.id("ImmuTextBox")).sendKeys("201");
		driver.findElement(By.id("ImmunizationSearch")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(1000);
		driver.findElement(By.id("SaveB")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearB")).click();
		
		//No Patient Number
		js.executeScript("alert('Test: if Patient Code is not in database.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//No Patient Number
		driver.findElement(By.id("PatientCode")).sendKeys("PAT500");
		driver.findElement(By.id("PatientSearchButton")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("PatientCode")).clear();
		
		//with Patient Number
		js.executeScript("alert('Test: if Patient Code is in database.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//with Patient Number
		driver.findElement(By.id("PatientCode")).sendKeys("PAT08");
		driver.findElement(By.id("PatientSearchButton")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("ClearB")).click();
		
		//Not Authorized Staff Number
		js.executeScript("alert('Test: Not Authorized Staff Number')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Not Authorized Staff Number
		driver.findElement(By.id("Prepby")).sendKeys("E2025");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("Prepby")).clear();
		driver.findElement(By.id("ClearB")).click();
		
		//Authorized Staff Number
		js.executeScript("alert('Test: Authorized Staff Number.')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Authorized Staff Number
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("ClearB")).click();
		
		//Immunization Code is not in database
		js.executeScript("alert('Test: To check if Immunization Code is not in database')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		
		//Immunization Code is not in database
		driver.findElement(By.id("PatientCode")).sendKeys("PAT08");
		driver.findElement(By.id("PatientSearchButton")).click();
		driver.findElement(By.id("ImmuCheckBox")).click();
		driver.findElement(By.id("ServiceTypeButton")).click();
		driver.findElement(By.id("ImmuTextBox")).sendKeys("500");
		driver.findElement(By.id("ImmunizationSearch")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearB")).click();
		
		
		//Immunization Code is  in database
		js.executeScript("alert('Test: To check if Immunization Code is in database')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Immunization Code is in database
		driver.findElement(By.id("PatientCode")).sendKeys("PAT07");
		driver.findElement(By.id("PatientSearchButton")).click();
		driver.findElement(By.id("ImmuCheckBox")).click();
		driver.findElement(By.id("ServiceTypeButton")).click();
		driver.findElement(By.id("ImmuTextBox")).sendKeys("201");
		driver.findElement(By.id("ImmunizationSearch")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("ClearB")).click();
		
		//Save
		js.executeScript("alert('Test: Saving Data')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Save
		driver.findElement(By.id("BillingTextBox")).sendKeys("903");
		driver.findElement(By.id("PatientCode")).sendKeys("PAT07");
		driver.findElement(By.id("PatientSearchButton")).click();
		driver.findElement(By.id("ImmuCheckBox")).click();
		driver.findElement(By.id("ServiceTypeButton")).click();
		driver.findElement(By.id("ImmuTextBox")).sendKeys("201");
		driver.findElement(By.id("ImmunizationSearch")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		driver.findElement(By.id("SaveB")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearB")).click();
		
		//Clear
		js.executeScript("alert('Test: To Clear')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Clear
		driver.findElement(By.id("BillingTextBox")).sendKeys("902");
		driver.findElement(By.id("PatientCode")).sendKeys("PAT07");
		driver.findElement(By.id("PatientSearchButton")).click();
		driver.findElement(By.id("ImmuCheckBox")).click();
		driver.findElement(By.id("ServiceTypeButton")).click();
		driver.findElement(By.id("ImmuTextBox")).sendKeys("201");
		driver.findElement(By.id("ImmunizationSearch")).click();
		driver.findElement(By.id("Prepby")).sendKeys("E2020");
		driver.findElement(By.id("PrepBySearch")).click();
		Thread.sleep(3000);
		driver.findElement(By.id("ClearB")).click();
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
