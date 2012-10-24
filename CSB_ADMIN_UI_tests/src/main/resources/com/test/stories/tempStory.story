
Scenario: I can send message by member
Given file:///home/tymtsiv/Work/clickatell-spotbot/clickatell-spotbot/admin-web/src/main/webapp/member.html
When I select tab Members Settings
When I press Edit
When I switch to tab Message
When I set field Message Body: 'Nevermore'
When I press Send
