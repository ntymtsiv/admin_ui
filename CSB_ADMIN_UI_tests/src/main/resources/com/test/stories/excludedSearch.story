
Scenario: I can't find Groop by name, when use find members
When I select tab Groop Settings
When I set search-query 21314
When I press dropdown
When I press Members
Then I found None elements

Scenario: I can find Groop by name, when use find groop
When I select tab Groop Settings
When I set search-query aejupc
When I press dropdown
When I press Groops
Then I found aejupc

Scenario: I can't find member by name, when use find groop
When I select tab Groop Settings
When I set search-query 9sLI8iEn4nhVdh
When I press dropdown
When I press Groops
Then I found None elements

Scenario: I can find Groop by first part of name
When I select tab Groop Settings
When I set search-query aeju
When I press dropdown
When I press Groops
Then I found aejupc

Scenario: close broweser
Then Close after 1 seconds
