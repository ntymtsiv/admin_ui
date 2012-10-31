

Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can send direct message by member
When I select tab Content Management
When I set field Headline: 'Nevermore'
When I set field Member_Name: 'Nevermore'
When I set field Article: 'Nevermore'
When I press Save & Publish