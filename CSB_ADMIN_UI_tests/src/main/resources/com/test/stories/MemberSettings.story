
Scenario: Sign In
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/auth/login
When I set field Username: 'jsmith@clickatell.com'
When I set field Password: '123123'
When I press Sign In

Scenario: I can edit member
When I select tab Members Settings
When I press Edit
When I set field First Name: '1111'
When I set field Last Name: 'NickNick'
When I set field Member Name: '11111111'
When I set field Member Email: 'nickasd@asd.com'
When I set gender 'Female'
When I set field Bio: 'I am awesome'
When I set field Postal Code: '45672'
When I press Save

Scenario: I can add member to groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I set field Add Groop: 'adhiyi'
When I press Add Groop

Scenario: I can leave from groop
When I select tab Members Settings
When I press Edit
When I switch to tab Groops
When I press Leave

