
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can't find Groop by name, when use find members
When I select tab Groop Settings
When I set search-query 21314
When I press dropdown
When I press Members
Then I found None elements

Scenario: I can find Groop by name, when use find groop
When I select tab Groop Settings
When I set search-query 21314
When I press dropdown
When I press Groops
Then I found 21314

Scenario: I can't find member by name, when use find groop
When I select tab Groop Settings
When I set search-query 9sLI8iEn4nhVdh
When I press dropdown
When I press Groops
Then I found None elements

Scenario: I can find Groop by first part of name
When I select tab Groop Settings
When I set search-query 213
When I press dropdown
When I press Groops
Then I found 21314
