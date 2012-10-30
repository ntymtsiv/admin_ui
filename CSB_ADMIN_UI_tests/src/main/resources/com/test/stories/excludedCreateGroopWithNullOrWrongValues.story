
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
Then I check title

Scenario: I can create groop without Keyword
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: 'BestGroop'
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
Then I check title

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
Then Groop has not been created

Scenario: I can find Groop by full name
When I select tab Groop Settings
When I press Add Groop
When I set search-query BestGroop

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

Scenario: I can change number of users
When I select tab Members Settings
When I change number of users to 20
When I change number of users to 100
When I change number of users to All Items
When I change number of users to 10




