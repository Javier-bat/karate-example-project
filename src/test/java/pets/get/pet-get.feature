Feature: Get pets https://petstore.swagger.io/

  Scenario: Get a pet by id
    * url "https://petstore.swagger.io"
    * path 'v2','pet','23'
    When method get
    Then status 200
    Then match response == read('pet-get-response.json')
