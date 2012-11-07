
Scenario: Sign In
Given http://clickatell-dev-1835033989.us-east-1.elb.amazonaws.com/admin/admin/members/
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can't create groop without Name
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: ''
When I set field Groop Keyword: 'price2'
When I set field Chop Shop Store: 'NoneShope'
When I set field Groop Web Site: 'sportFan.ua'
When I set field Groop Tag Line: 'Sport is Cool'
When I set field Groop Description: 'Best groop'
When I set field Groop Address: ' Green st.'
When I set field Groop City: 'San Andreas'
When I set field Groop Postal Code: '34567'
When I set field Groop Phone Number: '+33333333333'
When I set field Groop Info: 'None Info ((('
Then Groop has not been created

Scenario: I can create groop without Keyword
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: 'BestGroop'
When I set field Groop Keyword: ''
When I set field Chop Shop Store: 'NoneShope'
When I set field Groop Web Site: 'sportFan.ua'
When I set field Groop Tag Line: 'Sport is Cool'
When I set field Groop Description: 'Best groop'
When I set field Groop Address: ' Green st.'
When I set field Groop City: 'San Andreas'
When I set field Groop Postal Code: '34567'
When I set field Groop Phone Number: '+33333333333'
When I set field Groop Info: 'None Info ((('
Then Groop has not been created

Scenario: I can't create groop with only Name
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: 'BestGroop'
When I set field Groop Keyword: ''
When I set field Chop Shop Store: ''
When I set field Groop Web Site: ''
When I set field Groop Tag Line: ''
When I set field Groop Description: ''
When I set field Groop Address: ''
When I set field Groop City: ''
When I set field Groop Postal Code: ''
When I set field Groop Phone Number: ''
When I set field Groop Info: ''
When I press Save
Then Groop has not been created


Scenario: I can't create groop with empty values
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: ''
When I set field Groop Keyword: ''
When I set field Chop Shop Store: ''
When I set field Groop Web Site: ''
When I set field Groop Tag Line: ''
When I set field Groop Description: ''
When I set field Groop Address: ''
When I set field Groop City: ''
When I set field Groop Postal Code: ''
When I set field Groop Phone Number: ''
When I set field Groop Info: ''
When I press Save
Then Groop has not been created

Scenario: I can't create groop with only keyword
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: ''
When I set field Groop Keyword: 'BestG'
When I set field Chop Shop Store: ''
When I set field Groop Web Site: ''
When I set field Groop Tag Line: ''
When I set field Groop Description: ''
When I set field Groop Address: ''
When I set field Groop City: ''
When I set field Groop Postal Code: ''
When I set field Groop Phone Number: ''
When I set field Groop Info: ''
When I press Save
Then Groop has not been created

Scenario: I can create groop
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: '1111111111111'
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

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I set field Input Member Name: 'aeopem'
When I press Add

Scenario: I can remove member from groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Members
When I press Remove

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message HEY
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message HEYZOOKA_HEY
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message ADMINAZOOKA
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message HEY_WITH_PERKS
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message HELP_REQUEST
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message PROBLEM_REPORT
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message GROOP_MESSAGE
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message MESSAGE
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can add member to groop
When I select tab Groop Settings
When I press Edit
When I switch to tab Messages
When I select type of message DIRECT_MESSAGE
When I set field Recipient: 'Own Id'
When I set field Message Body: 'HELP!!!!!!'
When I press Save

Scenario: I can delete groop
When I select tab Groop Settings
When I press Delete



