

Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I set field Input Member Name: 'afvvkq'
When I press Add

Scenario: I can remove member from groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I press Remove