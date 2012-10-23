
Scenario: Create Article 1
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/admin/members
When I select tab Content Management

When I set field Headline: 'Hello World 1'
When I set field Sub-Headline: 'hello1'
When I set field Member_Name: 'John Doe'
When I set field Article: 'Hello World!.'
When I press 'Save & Publish'


Scenario: Create Article 2
When I set field Headline: 'Hello World 2'
When I set field Sub-Headline: 'hello2'
When I set field Member_Name: 'Richie Blackmore'
When I set field Article: 'Long live Rock-N-Roll!'
When I press Save & Publish


Scenario: Delete Article 1
Then Close after 0 seconds
