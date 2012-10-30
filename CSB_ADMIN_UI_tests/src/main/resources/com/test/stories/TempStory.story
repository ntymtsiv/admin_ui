
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: Upper: I can switch to next page
When I select tab Groop Settings
When I switch to the 5 page in the upper switcher
When I switch to the 1 page in the upper switcher
When I switch to the 9 page in the upper switcher
When I switch to the next page in the upper switcher
When I switch to the prev page in the upper switcher


