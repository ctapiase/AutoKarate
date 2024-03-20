Feature: Put a user on reqres

  Scenario: Put a User
    Given url "https://reqres.in/" + "/api/users/" + "2"
    And request {"name": "ramiro","job": "zion resident"}
    When method put
    Then status 200
    And match $.name == "ramiros"