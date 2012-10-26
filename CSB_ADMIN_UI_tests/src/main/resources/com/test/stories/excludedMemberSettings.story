
Scenario: I can create member
When I select tab Members Settings
When I press Add Member
When I set field Mobile Number: '19034567932'
When I set field First Name: 'John'
When I set field Last Name: 'Smith'
When I set field Member Name: 'ZLOY'
When I set field Member Email: 'ZLoy@asd.com'
When I set birthday 1980-08-08
When I set gender 'Female'
When I set field Bio: '33333333333'
When I set field Postal Code: '33333333333'


Scenario: I can edit member
When I select tab Members Settings
When I press Edit
When I set field First Name: 'Nick'
When I set field Last Name: 'NickNick'
When I set field Member Name: 'Nick'
When I set field Member Email: 'nick@asd.com'
When I set gender 'Female'
When I set field Bio: 'I am awesome'
When I set field Postal Code: '4567'
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
When I select type of message Direct Message
When I set field Message Body: 'Nevermore'
When I press Send

Scenario: I can send help message by member
When I select tab Members Settings
When I press Edit
When I switch to tab Messages
When I select type of message Help Message
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
When I switch to tab Messages
When I set field Message Body: 'Nevermore'
When I press Reset Form