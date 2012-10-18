
Scenario: Add Member

Given http://172.18.196.5:8080/admin/admin/members
When I press Add Member
When I set field Mobile Number: '+1004567891'
When I set field First Name: 'John'
When I set field Last Name: 'Doe'
When I set field Member Name: 'JohnDoe'
When I set field Member Email: 'JohnDoe@asd.com'
When I set grander Male
When I set field Bio: 'Good!!!!!'
When I set field Postal Code: '61144'
When I press Create Member




