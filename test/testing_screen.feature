Feature: Testing knowledge

    Background:
        Given the app is running
        And I tap {"Let's start"} text
        And I wait
        And I tap {'TEST'} text
        And I wait

    Scenario: As User I want to see first word and answers
        Then I see {'Testing daily words'} text
        And I see {'developer'} text
        And I see {'розробниця'} text

    Scenario: As User I'm making the wrong choice
        Then I tap {'помилка'} text
        And I see {1} text with {Colors.grey} color
        And I tap {'клавіатура'} text
        And I see {2} text with {Colors.grey} color

    Scenario: As User I'm making the right choice
        Then I tap {'розробниця'} text
        And I don't see {'developer'} text
        And I see {'computer'} text

    Scenario: As User I finished test
        When I chose the correct translation every time
        #Then I see {'Congratulation! You passed the test!'} text