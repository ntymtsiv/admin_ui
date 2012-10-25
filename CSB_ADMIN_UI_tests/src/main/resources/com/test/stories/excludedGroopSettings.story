
Scenario: Sign In
Given http://clickatell-dev-1835033989.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can create groop
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: '33333333333'
When I set field Chop Shop Store: '33333333333'
When I set field Groop Web Site: '33333333333'
When I set field Groop Tag Line: '33333333333'
When I set field Groop Description: '33333333333'
When I set field Groop Business Name: '33333333333'
When I set field Groop Address: '33333333333'
When I set field Groop City: '33333333333'
When I set field Groop Postal Code: '33333333333'
When I set field Groop Phone Number: '33333333333'
When I set field Groop Info: '333333333ddd33'
When I press Save

Scenario: I can delete groop
When I select tab Groop Settings
When I press Delete

Scenario: I can add member to groop
Given a system state

Scenario: I can remove member from groop
Given a system state

Scenario: I can block member
Given a system state

Scenario: I can unblock member
Given a system state

Scenario: I can send Hey
Given a system state

Scenario: I can send Groop message
Given a system state

Scenario: I can send Hey with perk
Given a system state

Scenario: I can send Direct message
Given a system state

Scenario: I can send Hey
Given a system state

Scenario: I can block message sented by groop
Given a system state

Scenario: I can unblock message sented by groop
Given a system state

Scenario: I can delete message sented by groop
Given a system state
