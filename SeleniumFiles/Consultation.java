package selenium.demo;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Consultation{

	public static void main(String[] args)throws InterruptedException {
		System.setProperty("webdriver.chrome.driver", "E:\\Eclipse\\Google\\New folder\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		driver.get("http://drjoshypediatrics.somee.com/ConsultationEntry.aspx");
		driver.manage().window().maximize();
		try 
		{
			//Patient
			js.executeScript("alert('TestCase :To check if required validator appears if patient code is empty.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PatientSearchButton")).click();	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			//
			js.executeScript("alert('TestCase :To check if patient code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PatientTextBox")).sendKeys("PAT11");
			driver.findElement(By.id("PatientSearchButton")).click();	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//
			driver.findElement(By.id("PatientTextBox")).clear();
			driver.findElement(By.id("PatientTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("PatientSearchButton")).click();
			Thread.sleep(3000);						
			//endPatient
			
			
			//Immunization
			js.executeScript("alert('TestCase :To check if required validator appears if immuninization code is empty.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ImmuSearchButton")).click();	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			//
			js.executeScript("alert('TestCase :To check if immunization code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ImmuRefTextBox")).clear();
			driver.findElement(By.id("ImmuRefTextBox")).sendKeys("202");
			driver.findElement(By.id("ImmuSearchButton")).click();
			Thread.sleep(3000);				
			//endImmunization
			
			//Diagnosis
		
			js.executeScript("alert('TestCase: To check if Diagnosis Code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("DiagCode")).sendKeys("DIAG020");
			driver.findElement(By.id("NoteTextBox")).sendKeys("N/A");
			driver.findElement(By.id("AddDiagnosisButton")).click();
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();	
			
			driver.findElement(By.id("DiagCode")).clear();
			driver.findElement(By.id("NoteTextBox")).clear();
			driver.findElement(By.id("DiagCode")).sendKeys("DIAG01");
			driver.findElement(By.id("NoteTextBox")).sendKeys("N/A");
			driver.findElement(By.id("AddDiagnosisButton")).click();
			Thread.sleep(3000);			
			//endDiagnosis
			
			
			//PrepBy
			js.executeScript("alert('TestCase :To check if prepared by text box only accepts “staff” position and employee code exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("PrepBy")).sendKeys("E200");
			driver.findElement(By.id("PrepBySearchButton")).click();
			Thread.sleep(3000);	
			
			js.executeScript("alert('Result : Employee not found')");	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
			
			//
			driver.findElement(By.id("PrepBy")).clear();
			driver.findElement(By.id("PrepBy")).sendKeys("E2020");
			driver.findElement(By.id("PrepBySearchButton")).click();
			Thread.sleep(3000);	
			//endPrepBy
			
			
			//ExamBy
			js.executeScript("alert('TestCase :To check if immunized by text box only accepts “doctor” position and employee code exists')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
		
			driver.findElement(By.id("ExamBy")).sendKeys("E2002");
			driver.findElement(By.id("ExamBySearchButton")).click();		
			Thread.sleep(3000);	
						
			js.executeScript("alert('Result : Employee not found')");	
			Thread.sleep(3000);	
			driver.switchTo().alert().accept();
							
			driver.findElement(By.id("ExamBy")).clear();
			driver.findElement(By.id("ExamBy")).sendKeys("E2001");
			driver.findElement(By.id("ExamBySearchButton")).click();
			Thread.sleep(3000);				
			//endExamBy
			
			
			//Consultation
			js.executeScript("alert('TestCase : To check if required field validator appears during saving if some entries are empty.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ConsultationNoTextBox")).sendKeys("202");
			Thread.sleep(3000);		
			
			js.executeScript("window.scrollBy(0, 3000)");
			driver.findElement(By.id("SaveButton")).click();	
			Thread.sleep(3000);						
			driver.switchTo().alert().accept();	
			
			//
			js.executeScript("alert('TestCase : To check if Consultation No. Already exists.')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
						
			driver.findElement(By.id("ConsultationNoTextBox")).clear();
			driver.findElement(By.id("ConsultationNoTextBox")).sendKeys("202");		
			driver.findElement(By.id("BodyTempTextBox")).sendKeys("36");
			js.executeScript("window.scrollBy(0, 3000)");
			WebElement option1 = driver.findElement(By.name("FACheckBox"));
			option1.click();
			Thread.sleep(3000);
			
			driver.findElement(By.id("SaveButton")).click();
			Thread.sleep(3000);				
			driver.switchTo().alert().accept();
			driver.findElement(By.id("ClearButton")).click();	
			
			//
			js.executeScript("alert('TestCase : To check if entries can be saved')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ConsultationNoTextBox")).sendKeys("CON0123");
			driver.findElement(By.id("BodyTempTextBox")).sendKeys("36");
			driver.findElement(By.id("PatientTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("PatientSearchButton")).click();
			Thread.sleep(3000);		
			
			driver.findElement(By.id("ImmuRefTextBox")).sendKeys("202");
			driver.findElement(By.id("ImmuSearchButton")).click();
			Thread.sleep(3000);	
			
			driver.findElement(By.id("DiagCode")).sendKeys("DIAG01");
			driver.findElement(By.id("NoteTextBox")).sendKeys("N/A");
			driver.findElement(By.id("AddDiagnosisButton")).click();
			Thread.sleep(3000);		
			
			driver.findElement(By.id("PrepBy")).clear();
			driver.findElement(By.id("PrepBy")).sendKeys("E2020");
			driver.findElement(By.id("PrepBySearchButton")).click();
			Thread.sleep(3000);	
			
			driver.findElement(By.id("ExamBy")).clear();
			driver.findElement(By.id("ExamBy")).sendKeys("E2001");
			driver.findElement(By.id("ExamBySearchButton")).click();
			Thread.sleep(3000);	
	
			
			driver.findElement(By.id("SaveButton")).click();	
			Thread.sleep(3000);		
			
			//endConsultation
			
			//Clear
			js.executeScript("alert('TestCase :To check if clear button removes all inputs')");	
			Thread.sleep(3000);
			driver.switchTo().alert().accept();
			
			driver.findElement(By.id("ConsultationNoTextBox")).sendKeys("CON0123");
			driver.findElement(By.id("BodyTempTextBox")).sendKeys("36");
			driver.findElement(By.id("PatientTextBox")).sendKeys("PAT08");
			driver.findElement(By.id("PatientSearchButton")).click();
			Thread.sleep(3000);		
			
			driver.findElement(By.id("ImmuRefTextBox")).sendKeys("202");
			driver.findElement(By.id("ImmuSearchButton")).click();
			Thread.sleep(3000);	
			
			driver.findElement(By.id("DiagCode")).sendKeys("DIAG01");
			driver.findElement(By.id("NoteTextBox")).sendKeys("N/A");
			driver.findElement(By.id("AddDiagnosisButton")).click();
			Thread.sleep(3000);		
			
			js.executeScript("window.scrollBy(0, 1000)");
			driver.findElement(By.id("ClearButton")).click();	
			Thread.sleep(3000);			
			//endClear			
		}
		catch(Exception e) 
		{
			System.out.print(e);
		}
	}

}

