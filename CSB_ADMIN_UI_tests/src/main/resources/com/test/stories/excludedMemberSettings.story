
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

Scenario: I can add member to groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I set field Add Groop: 'asbocm'
When I press Add Groop

Scenario: I can leave from groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I press Leave

