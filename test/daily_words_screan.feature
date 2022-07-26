Feature: Learning words

    Background:
        Given the app is running
        And I tap {"Let's start"} text

    Scenario:
        Then I see {'Words for Today'} text