Feature: Learning words

    Background:
        Given the app is running
        And I tap {"Let's start"} text
        And I wait {1} second

    Scenario:
        Then I see {'Words for Today'} text