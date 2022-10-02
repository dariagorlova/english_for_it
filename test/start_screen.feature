Feature: Start of application

  Background:
    Given the app is running

  Scenario: As a User I want to see motivational text and buttons for start
    Then I see {'Today is an excellent day to learn something new!'} text
    And I see {'learn words'} text
    And I see {'learn phrases'} text

  Scenario: As a User I want to learn words and tap a button
    And I tap {'learn words'} text
    And I wait
    Then I don't see {'learn words'} text

  Scenario: As a User I want to learn phrases and tap a button
    And I tap {'learn phrases'} text
    And I wait
    Then I don't see {'learn phrases'} text

  Scenario: As a User I want to see drawer
    When I tap {Icons.menu} icon
    Then I see {'Improve Your English Level'} text

  Scenario: As a User I want to know some word translation
    When I tap {Icons.menu} icon
    And I see {'Translator'} text
    And I wait for {1} seconds
    And I tap {0} item
    And I wait for {1} seconds
    Then I see {'Find translation'} text
    And I see {'Word in English:'} text
    When I enter {'bug'} text into text field
    And I tap {Icons.search} icon
    And I wait
    Then I see {'помилка'} text
        


