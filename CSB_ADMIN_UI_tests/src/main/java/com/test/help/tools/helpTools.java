package com.test.help.tools;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

 class helpTools {
    public WebElement find_button_by_positions(String button, WebElement driver, int position){
        List<WebElement> elements=  driver.findElements(By.partialLinkText(button));
        return elements.get(position);
    }
}
