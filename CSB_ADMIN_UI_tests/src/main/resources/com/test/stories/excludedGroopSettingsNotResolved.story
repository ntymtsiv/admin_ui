
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