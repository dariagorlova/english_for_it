Feature: Testing knowledge (make pairs)

    Background:
        Given the app is running
        And I tap {"Let's start"} text
        And I wait
        And I tap {'Make pairs'} text
        And I wait

    Scenario: As User I want to see all words with translate
        Then I see {'Make pairs'} text
        And I see {'developer'} text
        And I see {'розробниця'} text