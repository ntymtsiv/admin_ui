package com.test.steps;

import org.jbehave.core.annotations.*;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.test.help.tools.*;

import java.util.List;


public class MySteps {

    WebDriver driver = new FirefoxDriver();
    helpTools help_tools;
@Given("$site")
public void goToGoogle(String site) {
  //  driver.manage().window().maximize();
    driver.get(site);
//    xpathFinder path= new xpathFinder();
//    path.findXpathByName(driver);


}


@When("I select tab $tab")
public void select_tab(String tab){
    String tab_nav="";
    System.out.println("Page title is: " + driver.getTitle());
    if (tab.equals("Dashboard"))
        tab_nav="1";
    else if (tab.equals("Groop Settings"))
        tab_nav="2";
    else if (tab.equals("Members Settings"))
        tab_nav="3";
    else if (tab.equals("Content Management"))
        tab_nav="4";
    driver.findElement(By.id("main-nav")).findElement(By.xpath("li["+tab_nav+"]/a")).click();

}
@When("I sel '$button'")
public void do_some_action(String button){
    driver.findElement(By.partialLinkText(button)).click();
}
@When("I Delete")
  public void do_some_action2(){
        driver.findElement(By.xpath("//*[text()='Adele_Schohan']/..")).findElement(By.className("btn-warning")).click();  }

@When("I sel2 '$button' $position")
public void do_some_action(String button, int position){
    List<WebElement> element=driver.findElements(By.partialLinkText(button));
    element.get(position-1).click();   }

@When("I press $button")
public void pressButton(final String button) throws  InterruptedException {
    String button_id="",Button_class="";
    if (button.equals("Add Member")){
        Button_class="span9";
        button_id="icon-plus";  }
    else if (button.equals("Create Member"))  {
        Button_class="form-actions";
        button_id="btn-primary"; }
    else if (button.equals("Content Management"))  {
        Button_class="form-actions";
        button_id="btn-primary"; }
    else if (button.equals("Save & Publish"))  {
        Button_class="form-actions";
        button_id="pull-right"; }
    else if (button.equals("Delete"))  {
        Button_class="pull-right";
        button_id="btn-danger"; }
    else
        throw new RuntimeException();

    driver.findElement(By.className(Button_class)).findElement(By.className(button_id)).click();

}
@When("I pres Birthday")
public void birthday(){
     driver.findElement(By.id("dt")).sendKeys("1991/12/12");

}
@When("I set field $field: '$value'")
public void set_fields(String field, String value) throws  InterruptedException {
  String field_id="";
    if (field.equals("Mobile Number"))
        field_id="mobile_number";
    else if (field.equals("First Name"))
        field_id="first_name";
    else if (field.equals("Last Name"))
        field_id="last_name";
    else if (field.equals("Member Name"))
        field_id="member_name";
    else if (field.equals("Member Email"))
        field_id="member_email";
    else if (field.equals("Postal Code"))
        field_id="postal_code";
    else if (field.equals("Bio"))
        field_id="bio";
    else if (field.equals("Headline")) {
        field_id="headline";
        driver.findElement(By.id(field_id)).clear();
        }
    else if (field.equals("Sub-Headline")) {
        field_id="subheadline";
        driver.findElement(By.id(field_id)).clear();
    }
    else if (field.equals("Member_Name")) {
        field_id="byline";
        driver.findElement(By.id(field_id)).clear();
    }
    else if (field.equals("Article"))
        field_id="article";
    else
         System.out.println("Error value");
    WebElement element =driver.findElement(By.id(field_id));
    element.sendKeys(value);
 }

@When("I set1 $field $value")
public void set_checkbox(String field, String value) throws  InterruptedException {
   String grander="";
   if (value.equals("Male"))
       grander="1";
   else if (value.equals("Female"))
       grander="2";
   else if (value.equals("Specified"))
       grander="3";
    WebElement element=driver.findElement(By.id("member_gender")).findElement(By.xpath("label["+grander+"]/input"));
   element.click();

}
@Then("Close after $second seconds")
public void close(int seconds) throws  InterruptedException{
    seconds=seconds*1000;
    Thread.sleep(seconds);

    //Close the browser
    driver.quit();
}



}
