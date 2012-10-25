
Scenario: I can create member
Given file:///home/tymtsiv/Work/clickatell-spotbot/clickatell-spotbot/admin-web/src/main/webapp/groop.html
When I select tab Members Settings
When I press Add Member
When I set field First Name: ''
When I set field Last Name: '33333333333'
When I set field Member Name: '33333333333'
When I set field Member Email: '33333333333'
When I set birthday '15.05.2007'
When I set gender 'Female'
When I set field Bio: '33333333333'
When I set field Postal Code: '33333333333'
When I press Create Member
