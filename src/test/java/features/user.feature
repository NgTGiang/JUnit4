
  Feature: user Detail

    Scenario: get user detail
      Given url 'https://reqres.in/api/users/2'
      When method GET
      Then status 200

#      Test branch "test"