Feature: Post test

  Background:
    * url "https://reqres.in/"
    * path "/api/users/"
    * def var = {"name": "morpheus","job": "leader"}
    * request {"name": "#(name)","job": "#(job)"}

  Scenario Outline: Post a User
    #Given request var
    When method post
    Then status 201
    Examples:
      | name   | job    |
      | laura  | diseno |
      | sol    | est    |
      | andres | est    |

