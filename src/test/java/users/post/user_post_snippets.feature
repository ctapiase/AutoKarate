@Ignore
Feature: Reusable Scenarios for Post a user

  @Create
  Scenario:
    Given url "https://reqres.in/api/users/"
    And request {"name": "ramiro","job": "zion resident"}
    When method post
    Then status 201
    And def contacId = $.id