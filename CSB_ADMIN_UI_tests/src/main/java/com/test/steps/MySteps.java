package com.test.steps;

import com.gargoylesoftware.htmlunit.IncorrectnessListener;
import com.gargoylesoftware.htmlunit.NicelyResynchronizingAjaxController;
import com.gargoylesoftware.htmlunit.SilentCssErrorHandler;
import com.gargoylesoftware.htmlunit.WebClient;
import org.jbehave.core.annotations.*;
import org.junit.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.test.help.tools.*;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import sun.awt.windows.ThemeReader;


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
    driver.manage().window().setPosition(new Point(1000,500));
    driver.get(site);
}
@When("I select tab $tab")
public void selectTab(String tab){
    String tabNav="";
    if (tab.equals("Dashboard"))
        tabNav="1";
    else if (tab.equals("Groop Settings"))
        tabNav="2";
    else if (tab.equals("Members Settings"))
        tabNav="3";
    else if (tab.equals("HeyZooka Groop"))
        tabNav="4";
    else if (tab.equals("Content Management"))
        tabNav="5";
    driver.findElement(By.id("main-nav")).findElement(By.xpath("li["+tabNav+"]/a")).click();
}
@When("I switch to tab $tab")
public void switchToTab(String tab){
    String tabNav="";
    if (tab.equals("Messages"))
        tabNav="3";
    else if (tab.equals("Groops")||tab.equals("Members"))
        tabNav="2";
    else if (tab.equals("Settings"))
        tabNav="1";
    driver.findElement(By.className("tabbable")).findElement(By.xpath("ul/li["+tabNav+"]/a")).click();
}

@When("I select type of message $type")
public void messageType(String type){
    driver.findElement(By.xpath("//option[text()='"+type+"']")).click(); }

@When("I press $button")
public void pressButton(final String button) throws  InterruptedException {
    String buttonId="",ButtonClass="";
    if (button.equals("Add Member")){
        ButtonClass="span9";
        buttonId="btn-primary";
        driver.findElement(By.className(ButtonClass)).findElement(By.className(buttonId)).click();}
    else if (button.equals("Create Member")) {
        ButtonClass="form-actions";
        buttonId="btn-primary";
      driver.findElement(By.className(ButtonClass)).findElement(By.className(buttonId)).click();}
    else if (button.equals("Edit"))
        driver.findElement(By.partialLinkText(button)).click();
    else if (button.equals("Add"))        {
        driver.findElement(By.id("ui-id-2")).click();
        driver.findElement(By.xpath("//button[text()='Add']")).click(); }
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
        driver.findElement(By.className("action-td")).findElement(By.xpath("a[2]")).click();
    else if (button.equals("Block Member")||button.equals("Unblock Member"))
        driver.findElement(By.xpath("//td[text()='Adele_Schohan']/../td[6]/a")).click();
    else if (button.equals("Block"))
        driver.findElement(By.xpath("//td[text()='2']/../td[5]/a[1]")).click();
    else if (button.equals("Unblock"))
        driver.findElement(By.xpath("//td[text()='2']/../td[5]/a[1]")).click();
    else if (button.equals("Leave"))
        driver.findElement(By.partialLinkText(button)).click();
    else if (button.equals("Upload"))

        driver.findElement(By.id("news_images")).findElement(By.className("btn")).click();
    else if (button.equals("Reset Form"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Add Groop"))                  {
        try{
            driver.findElement(By.id("ui-id-2")).click();
            driver.findElement(By.xpath("//*[text()='"+button+"']")).click();}
        catch(Exception e){driver.findElement(By.partialLinkText(button)).click();}}
    else if (button.equals("Save & Publish"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if (button.equals("Sign In"))
        driver.findElement(By.className("btn-large")).click();
    else if(button.equals("Search All"))
        driver.findElement(By.xpath("//*[text()='"+button+"']")).click();
    else if(button.equals("dropdown"))
        driver.findElement(By.className("search-btn-group")).findElement(By.className("dropdown-toggle")).click();
    else if(button.equals("Groops"))
        driver.findElement(By.className("dropdown-menu")).findElement(By.xpath("li/a")).click();
    else if(button.equals("Members"))
        driver.findElement(By.className("dropdown-menu")).findElement(By.xpath("li[2]/a")).click();
    else
        throw new RuntimeException();
    Thread.sleep(1000L);
}
//@When("I set birthday '$day.$month.$year'")
//public void birthday(String day, String month, int year){
//    Integer i=1;
//    try{
//     driver.findElement(By.name("DateOfBirth_Month")).findElement(By.xpath("option["+month+"]")).click();         }
//    catch (Exception e){driver.findElement(By.name("dateofbirth_month")).findElement(By.xpath("option["+month+"]")).click();}
//    try{
//     driver.findElement(By.name("DateOfBirth_Day")).findElement(By.xpath("option["+day+"]")).click();       }
//    catch (Exception e){driver.findElement(By.name("dateofbirth_day")).findElement(By.xpath("option["+day+"]")).click();}
//    for(int tempYear=2011;i<120;i++)  {
//        if (tempYear==year)
//            break;
//        tempYear-=1;
//    }
//    try{
//    driver.findElement(By.name("DateOfBirth_Year")).findElement(By.xpath("option["+Integer.toString(i)+"]")).click();  }
//    catch (Exception e){driver.findElement(By.name("dateofbirth_year")).findElement(By.xpath("option["+Integer.toString(i)+"]")).click();}
//}
@When("I set birthday $year")
public void birthday(String year){
    WebElement element =driver.findElement(By.id("birthDate"));
    ((JavascriptExecutor) driver).executeScript("element.sendKeys(year);", element);
}

@When("I set field $field: '$value'")
public void setFields(String field, String value) throws  InterruptedException {
  String fieldId="";
    WebElement communityId;
    if (field.equals("Mobile Number"))
        fieldId="mobile_number";
    else if (field.equals("First Name"))
        fieldId="first_name";
    else if (field.equals("Last Name"))
        fieldId="last_name";
    else if (field.equals("Member Name"))
        fieldId="member_name";
    else if (field.equals("Member Email"))
        fieldId="member_email";
    else if (field.equals("Postal Code"))
        fieldId="postal_code";
    else if (field.equals("Bio"))
        fieldId="bio";
    else if (field.equals("Headline"))
        fieldId="headline";
    else if (field.equals("Message Body"))
        fieldId="message_body";
    else if (field.equals("Add Groop"))
        fieldId="add_groop";
    else if (field.equals("Sub-Headline"))
        fieldId="subheadline";
    else if (field.equals("Member_Name"))
        fieldId="byline";
    else if (field.equals("Article"))
        fieldId="article";
    else if (field.equals("Username"))
        fieldId="username";
    else if (field.equals("Password"))
        fieldId="password";
    else if (field.equals("Groop Name"))
        fieldId="name";
    else if (field.equals("Groop Owner"))
        fieldId="groopowner";
    else if (field.equals("Groop Keyword"))
        fieldId="details.keyword";
    else if (field.equals("Chop Shop Store"))
        fieldId="information.fullName";
    else if (field.equals("Groop Web Site"))
        fieldId="web";
    else if (field.equals("Groop Tag Line"))
        fieldId="tagline";
    else if (field.equals("Groop Description"))
        fieldId="description";
    else if (field.equals("Groop Address"))
        fieldId="groop_address_1";
    else if (field.equals("Groop City"))
        fieldId="groop_city";
    else if (field.equals("Groop Postal Code"))
        fieldId="groop_postal_code";
    else if (field.equals("Groop Phone Number"))
        fieldId="groop_phone_number";
    else if (field.equals("Groop Info"))
        fieldId="groop_description";
    else if (field.equals("Input Member Name"))
        fieldId="groopmember";
    else if (field.equals("Recipient"))    {
        fieldId="recipient";
            if(value.equals("Own Id"))     {
                communityId =  driver.findElement(By.className("pull-right"));
                String communityId2=communityId.getText();
                String [] communityId3 = communityId2.split(" ");
                value=communityId3[1];  }  }
    else
         throw new RuntimeException("Error field");
    WebElement element =driver.findElement(By.id(fieldId));
    element.clear();
    element.sendKeys(value);
    Thread.sleep(500L); }

@When("I set gender '$value'")
public void setCheckbox(String value) throws  InterruptedException {
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
@Then("Groop $status")
    public void status(String status)   {
    if(status.equals("has not been created"))
     if(!driver.getTitle().equals("Groop | Creating Groop | HeyZooka Admin"))
        throw new RuntimeException();
    if (status.equals("was created"))
        if(!driver.getTitle().equals("FFF"))
            throw new RuntimeException();
    }
@Then("Close after $second seconds")
public void close(int seconds) throws  InterruptedException{
    seconds=seconds*1000;
    Thread.sleep(seconds);
    driver.quit();
}
@When("I change number of elements to  $number in the $upperOrLower switcher")
public void changeNumberOfUser(String number, String switcher)  throws InterruptedException{
    if(number.equals("10"))
        number="1";
    if(number.equals("20"))
        number="2";
    if(number.equals("100"))
        number="3";
    if(number.equals("All Items"))
        number="4";
    if (switcher.equals("upper"))   {
        driver.findElement(By.className("margin-short")).findElement(By.className("dropdown-toggle")).click();
        driver.findElement(By.className("margin-short")).findElement(By.className("dropdown-menu")).findElement(By.xpath("li["+number+"]/a")).click(); }
    else if (switcher.equals("lower"))    {
        List <WebElement> elements= driver.findElements(By.className("dropdown-toggle"));
        elements.get(2).click();
        driver.findElement(By.className("open")).findElement(By.xpath("ul/li["+number+"]/a")).click(); }}
@When("I switch to the $next page in the $switcher switcher")
public void pageSwitcher(String page, String switcher) {
    if (switcher.equals("upper")){
      if(page.equals("next"))
            page="11";
      else if(page.equals("prev"))
            page="1";
      driver.findElement(By.className("bg-white")).findElement(By.xpath("li["+page+"]/a")).click();  }}
public void pageSwitcher(Integer page, String switcher) {
        if (switcher.equals("upper")){
            page+=1;
            driver.findElement(By.className("bg-white")).findElement(By.xpath("li["+Integer.toString(page)+"]/a")).click(); } }

@When("I set search-query $query")
public void search(String query){
    driver.findElement(By.className("search-query")).sendKeys(query);}

@Then("I found $user")
public void resultsOfSearch(String user){
    if(user.equals("None elements"))
        try{
            driver.findElement(By.className("table-bordered")).findElement(By.xpath("tbody/tr"));
            throw new RuntimeException();  }
        catch (NoSuchElementException e){}
    else
        driver.findElement(By.className("table-bordered")).findElement(By.xpath("//*[text()='"+user+"']"));
}
}
