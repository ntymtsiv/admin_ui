Scenario: Create News Article

Given http://stress-test2-1104820028.us-east-1.elb.amazonaws.com/admin/admin/members
When I select tab Content Management
When I set field Headline: 'Hello World'
When I set field Sub-Headline: 'hello'
When I set field Member_Name: 'John Doe'
When I set field Article: '-Hello flowers -Hello, Richard -Hello, Sun -Hello, Richard...'
When I press Save & Publish
Then Close after 5 seconds