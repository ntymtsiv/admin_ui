
Scenario: Sign In
Given http://clickatell-dev-1835033989.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can create groop
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: 'SportFan'
When I set field Groop Keyword: 'goodgood'
When I set field Chop Shop Store: 'NoneShope'
When I set field Groop Web Site: 'sportFan.ua'
When I set field Groop Tag Line: 'Sport is Cool'
When I set field Groop Description: 'Best groop'
When I set field Groop Address: ' Green st.'
When I set field Groop City: 'San Andreas'
When I set field Groop Postal Code: '34567'
When I set field Groop Phone Number: '+33333333333'
When I set field Groop Info: 'None Info ((('
When I press Save

Scenario: I can delete groop
When I select tab Groop Settings
When I press Delete

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I set field Input Member Name: 'egngds'
When I press Add

Scenario: I can remove member from groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I press Remove

Scenario: I can block member
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I press Block Member

Scenario: I can unblock member
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I press Unblock Member

Scenario: I can send Hey
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message Hey
When I set field Recipient: '3334322341'
When I set field Message Body: '3334322341'
When I press Save (send message)

Scenario: I can send Groop message
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I set field Recipient: '3334322341'
When I set field Message Body: '3334322341'
When I press Save (send message)

Scenario: I can cancel send message
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I set field Recipient: '3334322341'
When I set field Message Body: '3334322341'
When I press Cancel (send message)


Scenario: I can send Hey with perk
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message Hey with Perk
When I set field Recipient: '3334322341'
When I set field Message Body: '3334322341'
When I press Save (send message)

Scenario: I can send Direct message
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message Direct Message
When I set field Recipient: '3334322341'
When I set field Message Body: '3334322341'
When I press Save (send message)

Scenario: I can block message sented by groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I press Block


Scenario: I can unblock message sented by groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I press Unblock

Scenario: I can delete message sented by groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I press Delete Message

