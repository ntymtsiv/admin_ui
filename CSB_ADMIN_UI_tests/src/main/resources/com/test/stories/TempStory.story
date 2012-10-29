
Scenario: Sign In
Given file:///home/tymtsiv/Work/clickatell-spotbot/clickatell-spotbot/admin-web/src/main/webapp/groop.html
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can create groop
When I select tab Groop Settings
When I press Add Groop
When I set field Groop Name: 'Price2'
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