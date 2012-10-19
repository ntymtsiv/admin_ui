package com.test.help.tools;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class xpathFinder {
public void findXpathByName(WebDriver driver){
    driver.findElements(By.className("pull-right"));
    System.out.println(driver.findElements(By.className("pull-right")));

}
}
