
Scenario: Sign In
Given http://clickatell-dev-1835033989.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can create member
When I select tab Members Settings
When I press Add Member
When I set field Mobile Number: '33333333333'
When I set field First Name: '33333333333'
When I set field Last Name: '33333333333'
When I set field Member Name: '33333333333'
When I set field Member Email: '33333333333'
When I set birthday '15.05.1967'
When I set gender 'Female'
When I set field Bio: '33333333333'
When I set field Postal Code: '33333333333'
When I press Create Member


Scenario: I can edit member
When I select tab Members Settings
When I press Edit
When I set field First Name: '33333333333'
When I set field Last Name: '33333333333'
When I set field Member Name: '33333333333'
When I set field Member Email: '33333333333'
When I set birthday '15.05.1967'
When I set gender 'Female'
When I set field Bio: '33333333333'
When I set field Postal Code: '33333333333'
When I press Save

Scenario: I can delete member
When I select tab Members Settings
When I press Delete

Scenario: I can send message by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I set field Message Body: 'Nevermore'
When I press Send

Scenario: I can send direct message by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I press Direct Message
When I set field Message Body: 'Nevermore'
When I press Send

Scenario: I can send help message by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I press Help Message
When I set field Message Body: 'Nevermore'
When I press Send

Scenario: I can delete message sented by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I press Delete Message

Scenario: I can block message sented by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I press Block

Scenario: I can unblock message sented by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I press Unblock

Scenario: I can add member to groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I set field Add Groop: 'Baratrum'
When I press Add Groop

Scenario: I can leave from groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I press Leave

Scenario: I can reset form in tab Message
When I select tab Members Settings
When I press Edit
When I switch to tab Message
When I set field Message Body: 'Nevermore'
When I press Reset Form