package com.test.help.tools;


import com.thoughtworks.selenium.DefaultSelenium;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverBackedSelenium;

public class xpathFinder {
public void findXpathByName(WebDriver driver){
    DefaultSelenium WebDriver = new WebDriverBackedSelenium(driver,"google.com");

    System.out.println(WebDriver.getBodyText());
}
}
