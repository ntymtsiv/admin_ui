
Scenario: Create Article
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/admin/members
When I select tab Content Management
When I set field Headline: 'Hello World2'
When I set field Sub-Headline: 'hello'
When I set field Member_Name: 'John Doe'
When I set field Article: '-Hello flowers -Hello, Richard -Hello, Sun -Hello, Richard...'
When I press Save & Publish

Scenario: Create Article 2
Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/admin/members
When I select tab Content Management
When I set field Headline: 'Hello all2'
When I set field Sub-Headline: 'hi'
When I set field Member_Name: 'Adam Patrick'
When I set field Article: 'You are awesome'
When I press Save & Publish

Scenario: Delete Article 2
When I Delete
