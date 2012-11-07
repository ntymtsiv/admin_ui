package com.test;

/**
 * Created by IntelliJ IDEA.
 * User: diakunchikov
 * Date: 06.11.12
 * Time: 17:44
 * To change this template use File | Settings | File Templates.
 */
public class Config {

    public String configurationFile() {

    String adminUrl = "http://clickatell-dev-1835033989.us-east-1.elb.amazonaws.com/admin/auth/login";
    return adminUrl;

    }
    public String login() {

        String login = "jsmith@clickatell.com";
        return login;

    }
    public String adminPassword() {

        String adminPassword = "123123";
        return adminPassword;

    }
}
