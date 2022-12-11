package selenium.demo;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class PatientRegistration {
	public static void main(String[] args) {
		try {
		System.setProperty("webdriver.chrome.driver", "E:\\Eclipse\\Google\\New folder\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		driver.get("http://www.drjoshypediatrics.somee.com/PatientRegsiter.aspx/");
		driver.manage().window().maximize();
		
		//Test Case #2: To check if patient code already exists.(save button)
		js.executeScript("alert('Test: To check if patient code already exists.(save button)')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Test Case #2: To check if patient code already exists.(save button)
		driver.findElement(By.id("PcodeTextBox")).sendKeys("PAT08");			
		driver.findElement(By.id("PnameTextBox")).sendKeys("Luka Doncic");			
		driver.findElement(By.id("AddressTextBox")).sendKeys("Sitio San Esidro Apas Cebu");			
		driver.findElement(By.id("TphoneTextBox")).sendKeys("09668258676");		
		driver.findElement(By.id("FTextBox")).sendKeys("Joseilto Oporto");
		driver.findElement(By.id("MTextBox")).sendKeys("Melinda Oporto");
		Select drpGender4 = new Select(driver.findElement(By.name("GenderDropDownList")));
		drpGender4.selectByVisibleText("Male");
		driver.findElement(By.id("BdayTextBox")).sendKeys("02022000");
		driver.findElement(By.id("AgeTextBox")).sendKeys("20");
		driver.findElement(By.id("WeightTextBox")).sendKeys("160");
		driver.findElement(By.id("HeightTextBox")).sendKeys("171");			
		driver.findElement(By.id("EncodedTextBox")).sendKeys("E2021");
		driver.findElement(By.id("SaveButton")).click();
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearButton")).click();
		
		//Test Case #3: To check if required field  appears if some entries are blank.(save button)
		js.executeScript("alert('To check if required field  appears if some entries are blank.(save button)')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Test Case #3: To check if required field  appears if some entries are blank.(save button)
		driver.findElement(By.id("PcodeTextBox")).sendKeys("PAT012345678");			
		driver.findElement(By.id("PnameTextBox")).sendKeys("Luka Doncic");			
		driver.findElement(By.id("AddressTextBox")).sendKeys("Sitio San Esidro Apas Cebu");			
		driver.findElement(By.id("TphoneTextBox")).sendKeys("09668258676");				
		driver.findElement(By.id("SaveButton")).click();			
		Thread.sleep(3000);	
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearButton")).click();
		
		//Test Case #4: To check if clear button removes all inputs.(clear button)
		js.executeScript("alert('To check if clear button removes all inputs.(clear button)')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Test Case #4: To check if clear button removes all inputs.(clear button)
		driver.findElement(By.id("PcodeTextBox")).sendKeys("PAT008");			
		driver.findElement(By.id("PnameTextBox")).sendKeys("Luka Doncic");			
		driver.findElement(By.id("AddressTextBox")).sendKeys("Sitio San Esidro Apas Cebu");			
		driver.findElement(By.id("TphoneTextBox")).sendKeys("09668258676");		
		driver.findElement(By.id("FTextBox")).sendKeys("Joseilto Oporto");
		driver.findElement(By.id("MTextBox")).sendKeys("Melinda Oporto");
		Select drpGender = new Select(driver.findElement(By.name("GenderDropDownList")));
		drpGender.selectByVisibleText("Male");
		driver.findElement(By.id("BdayTextBox")).sendKeys("02022000");
		driver.findElement(By.id("AgeTextBox")).sendKeys("20");
		driver.findElement(By.id("WeightTextBox")).sendKeys("160");
		driver.findElement(By.id("HeightTextBox")).sendKeys("171");			
		driver.findElement(By.id("EncodedTextBox")).sendKeys("E2021");
		Thread.sleep(2000);	
		driver.findElement(By.id("ClearButton")).click();		
		js.executeScript("alert('Data Deleted')");
		Thread.sleep(2000);	
		driver.switchTo().alert().accept();
		driver.findElement(By.id("ClearButton")).click();
		
		
		//Test Case #1: To check if entries can be saved.(save button)
		js.executeScript("alert('Test Case #1: To check if entries can be saved.(save button)')");
		Thread.sleep(3000);
		driver.switchTo().alert().accept();
		
		//Test Case #1: To check if entries can be saved.(save button)
		driver.findElement(By.id("PcodeTextBox")).sendKeys("PAT089");			
		driver.findElement(By.id("PnameTextBox")).sendKeys("Luka Doncic");			
		driver.findElement(By.id("AddressTextBox")).sendKeys("Sitio San Esidro Apas Cebu");			
		driver.findElement(By.id("TphoneTextBox")).sendKeys("09668258676");		
		driver.findElement(By.id("FTextBox")).sendKeys("Joseilto Oporto");
		driver.findElement(By.id("MTextBox")).sendKeys("Melinda Oporto");
		Select drpGender3 = new Select(driver.findElement(By.name("GenderDropDownList")));
		drpGender3.selectByVisibleText("Male");
		driver.findElement(By.id("BdayTextBox")).sendKeys("02022000");
		driver.findElement(By.id("AgeTextBox")).sendKeys("20");
		driver.findElement(By.id("WeightTextBox")).sendKeys("160");
		driver.findElement(By.id("HeightTextBox")).sendKeys("171");			
		driver.findElement(By.id("EncodedTextBox")).sendKeys("E2021");
		Thread.sleep(3000);	
		driver.findElement(By.id("SaveButton")).click();	
		Thread.sleep(2000);	
		driver.switchTo().alert().accept();	
		driver.findElement(By.id("ClearButton")).click();
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
