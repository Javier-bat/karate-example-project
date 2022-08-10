Feature: Update pets https://petstore.swagger.io/

  Scenario: Update a pet
    Given url "https://petstore.swagger.io"
    And path 'v2', 'pet'
    And request  read('pet-put.json')
    When method PUT
    Then status 200
    Then match response == read('pet-put-response.json')

