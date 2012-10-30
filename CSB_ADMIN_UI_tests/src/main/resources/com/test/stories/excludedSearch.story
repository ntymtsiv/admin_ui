
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can find User by name, when use Search All
When I select tab Groop Settings
When I set search-query axnuii
When I press Search all
Scenario: I can find Groop by name, when use find groop
Scenario: I can't find userby name, when use find groop
Scenario: I can find Groop by first part of name
Scenario: I can find groop
