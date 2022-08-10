Feature: Post pets https://petstore.swagger.io/

  Scenario: Insert a pet
    Given url "https://petstore.swagger.io"
    And path 'v2', 'pet'
    And request  read('pet-post.json')
    When method POST
    Then status 200
    Then match response == read('pet-post-response.json')

