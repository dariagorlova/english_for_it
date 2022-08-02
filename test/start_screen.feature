Feature: Start of application

  Background:
    Given the app is running

  Scenario: As a User I want to see motivational text and button for start
    Then I see {'Today is an excellent day to learn something new!'} text
    And I see {"Let's start"} text

  Scenario: As a User I tap a button
    And I tap {"Let's start"} text
    # And I wait {1} second
    And I wait
    Then I don't see {"Let's start"} text

