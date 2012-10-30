
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can find Groop by first part of name
When I select tab Groop Settings
When I set search-query 213
When I press dropdown
When I press Groops
Then I found 21314

