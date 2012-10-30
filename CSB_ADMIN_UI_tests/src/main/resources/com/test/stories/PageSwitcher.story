
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: Upper: I can change number of elements
When I select tab Groop Settings
When I change number of elements to 20 in the upper switcher
When I change number of elements to 100 in the upper switcher
When I change number of elements to 10 in the upper switcher

Scenario: Lower: I can change number of elements
When I select tab Groop Settings
When I change number of elements to 20 in the lower switcher
When I change number of elements to 100 in the lower switcher
When I change number of elements to 10 in the lower switcher

Scenario: Upper: I can switch between pages
When I select tab Groop Settings
When I switch to the 5 page in the upper switcher
When I switch to the 1 page in the upper switcher
When I switch to the 9 page in the upper switcher
When I switch to the next page in the upper switcher
When I switch to the prev page in the upper switcher

