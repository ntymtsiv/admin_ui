package com.test.steps;

import com.gargoylesoftware.htmlunit.IncorrectnessListener;
import com.gargoylesoftware.htmlunit.NicelyResynchronizingAjaxController;
import com.gargoylesoftware.htmlunit.SilentCssErrorHandler;
import com.gargoylesoftware.htmlunit.WebClient;
import org.jbehave.core.annotations.*;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.test.help.tools.*;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;


import java.util.List;


public class MySteps {

      WebDriver driver = new FirefoxDriver();

//        WebDriver driver = new HtmlUnitDriver(true) {
//  public WebClient modifyWebClient(WebClient client) {
//        client.setCssErrorHandler(new SilentCssErrorHandler());
//        client.setAjaxController(new NicelyResynchronizingAjaxController());
//        client.setThrowExceptionOnScriptError(true);
//        client.setCssEnabled(true);
//
//    return client;}};

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
@When("I switch to tab $tab")
public void switchToTab(String tab){
    String tab_nav="";
    if (tab.equals("Messages"))
        tab_nav="3";
    if (tab.equals("Groops")||tab.equals("Members"))
        tab_nav="2";

    driver.findElement(By.className("tabbable")).findElement(By.xpath("ul/li["+tab_nav+"]/a")).click();
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

@When("I select type of message $type")
public void messageType(String type){
    driver.findElement(By.xpath("//option[text()='"+type+"']")).click(); }

@When("I press $button")
public void pressButton(final String button) throws  InterruptedException {
    String button_id="",Button_class="";
    if (button.equals("Add Member")){
        Button_class="span9";
        button_id="icon-plus";
        driver.findElement(By.className(Button_class)).findElement(By.className(button_id)).click();}
    else if (button.equals("Create Member"))
//        Button_class="form-actions";
//        button_id="btn-primary"; }
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Edit"))
        driver.findElement(By.partialLinkText(button)).click();
    else if (button.equals("Add"))
        driver.findElement(By.xpath("//button[text()='Add']")).click();
    else if (button.equals("Save"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Save (send message)"))
        driver.findElement(By.id("3")).findElement(By.xpath("form/div/button")).click();
    else if (button.equals("Cancel (send message)"))
        driver.findElement(By.id("3")).findElement(By.xpath("form/div/button[2]")).click();
    else if (button.equals("Delete"))
        driver.findElement(By.partialLinkText(button)).click();
    else if (button.equals("Send"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Delete Message"))
        driver.findElement(By.xpath("//td[text()='2']/../td[5]/a[2]")).click();
    else if (button.equals("Remove"))
        driver.findElement(By.xpath("//td[text()='Adele_Schohan']/../td[6]/a[2]")).click();
    else if (button.equals("Block Member")||button.equals("Unblock Member"))
        driver.findElement(By.xpath("//td[text()='Adele_Schohan']/../td[6]/a")).click();
    else if (button.equals("Block"))
        driver.findElement(By.xpath("//td[text()='2']/../td[5]/a[1]")).click();
    else if (button.equals("Unblock"))
        driver.findElement(By.xpath("//td[text()='2']/../td[5]/a[1]")).click();
    else if (button.equals("Leave"))
        driver.findElement(By.partialLinkText(button)).click();
    else if (button.equals("Reset Form"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Add Groop"))                  {
        try{
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();}
        catch(Exception e){driver.findElement(By.partialLinkText(button)).click();}}
    else if (button.equals("Save & Publish"))  {
        Button_class="form-actions";
        button_id="pull-right"; }
    else if (button.equals("Delete"))  {
        Button_class="pull-right";
        button_id="btn-danger"; }
    else if (button.equals("Sign In"))
        driver.findElement(By.className("btn-large")).click();
    else
        throw new RuntimeException();

//

}
@When("I set birthday '$day.$month.$year'")
public void birthday(String day, String month, int year){
    Integer i=1;
    try{
     driver.findElement(By.name("DateOfBirth_Month")).findElement(By.xpath("option["+month+"]")).click();         }
    catch (Exception e){driver.findElement(By.name("dateofbirth_month")).findElement(By.xpath("option["+month+"]")).click();}
    try{
     driver.findElement(By.name("DateOfBirth_Day")).findElement(By.xpath("option["+day+"]")).click();       }
    catch (Exception e){driver.findElement(By.name("dateofbirth_day")).findElement(By.xpath("option["+day+"]")).click();}
    for(int tempYear=2011;i<120;i++)  {
        if (tempYear==year)
            break;
        tempYear-=1;
    }
    try{
    driver.findElement(By.name("DateOfBirth_Year")).findElement(By.xpath("option["+Integer.toString(i)+"]")).click();  }
    catch (Exception e){driver.findElement(By.name("dateofbirth_year")).findElement(By.xpath("option["+Integer.toString(i)+"]")).click();}
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
    else if (field.equals("Headline"))
        field_id="headline";
    else if (field.equals("Message Body"))
        field_id="message_body";
    else if (field.equals("Add Groop"))
        field_id="add_groop";
    else if (field.equals("Sub-Headline"))
        field_id="subheadline";
    else if (field.equals("Member_Name"))
        field_id="byline";
    else if (field.equals("Article"))
        field_id="article";
    else if (field.equals("Username"))
        field_id="username";
    else if (field.equals("Password"))
        field_id="password";
    else if (field.equals("Groop Name"))
        field_id="groopname";
    else if (field.equals("Groop Owner"))
        field_id="groopowner";
    else if (field.equals("Groop Keyword"))
        field_id="groop_keyword";
    else if (field.equals("Chop Shop Store"))
        field_id="groop_proper_name";
    else if (field.equals("Groop Web Site"))
        field_id="groop_web_site";
    else if (field.equals("Groop Tag Line"))
        field_id="groop_tag_line";
    else if (field.equals("Groop Description"))
        field_id="groop_description";
    else if (field.equals("Groop Business Name"))
        field_id="groop_business_name";
    else if (field.equals("Groop Address"))
        field_id="groop_address_1";
    else if (field.equals("Groop City"))
        field_id="groop_city";
    else if (field.equals("Groop Postal Code"))
        field_id="groop_postal_code";
    else if (field.equals("Groop Phone Number"))
        field_id="groop_phone_number";
    else if (field.equals("Groop Info"))
        field_id="groop_description";
    else if (field.equals("Input Member Name"))
        field_id="mobile_number";
    else if (field.equals("Recipient"))
        field_id="recipient";
    else

         System.out.println("Error value");
    WebElement element =driver.findElement(By.id(field_id));
    element.clear();
    element.sendKeys(value);
 }

@When("I set gender '$value'")
public void set_checkbox(String value) throws  InterruptedException {
   String gander="";
   if (value.equals("Male"))
       gander="1";
   else if (value.equals("Female"))
       gander="2";
   else if (value.equals("Specified"))
       gander="3";
   WebElement element=driver.findElement(By.xpath("//*[text()='Male']/..")).findElement(By.xpath("label["+gander+"]/input"));
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
