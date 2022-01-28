@ignore
Feature: API Authentication

  Background:
    * url 'https://reqres.in/api/registergit '

  Scenario: Authentication test
    * def params =
    """
      {
        "email": "eve.holt@reqres.in",
        "password": "pistol"
      }
    """

    And form fields params
    When method POST
    Then status 200
    Then print '-------- response --------', response

    * def accessToken = response.token
    Then print '-------- accessToken --------', accessToken

#    When path ''
#    And header Authorization = 'Bearer' + accessToken
