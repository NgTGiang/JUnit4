
  Feature: user detail

    Background:
      * def jsonPayLoad = read('../data/postRequest.json')
      * url 'https://reqres.in/api/users/2'
      * header Content-Type = 'application/json'

    Scenario: create user detail
      Given request jsonPayLoad
      When method POST
      Then status 201
      Then print '-------- Response --------', response
      