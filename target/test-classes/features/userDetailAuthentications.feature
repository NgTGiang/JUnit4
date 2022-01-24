@ignore
  Feature: API Authentication

    Background:
      * url 'https://reqres.in/api/register'

    Scenario: Authentication test
      Given path 'token'
      And form field grand_type = 'client_credentials'
      And form field client_id = ''
      And form field client_secret = ''
      When method POST
      Then status 200

      * def accessToken = response.access_token
      
      Given path ''
      And headers Authorization = 'Bearer' + accessToken
      When method GET
      Then status 200
