Feature: Delete user on reqres

  Scenario: Delete a User
    * call read("../post/user_post_snippets.feature@Create")
    Given url "https://reqres.in/" + "/api/users/" + contacId
    When method delete
    Then status 204