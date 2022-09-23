Feature: Testing knowledge (choose the correcct translation of the English word)

    Background:
        Given the app is running
        And I tap {'learn words'} text
        And I wait
        And I tap {'Translate EN to UA'} text
        And I wait

    Scenario: As User I want to see first word and answers
        Then I see {'Testing daily words'} text
        And I see {'developer'} text
        And I see {'розробниця'} text

    Scenario: As User I see translation variants
        Then I see {'код'} text
        Then I see {'завдання'} text
        Then I see {'репозиторій'} text

    Scenario: As User I'm making the wrong choice
        Then I tap {'код'} text
        And I see {1} text with {Colors.grey} color
        And I tap {'завдання'} text
        And I see {2} text with {Colors.grey} color

    Scenario: As User I'm making the right choice
        Then I tap {'розробниця'} text
        And I wait
        And I don't see {'developer'} text
        And I see {'computer'} text

    #Scenario: As User I finished test
    #    When I chose the correct translation every time
    #    And I wait
    #    Then I see {'Congratulation! You passed the test!'} text

    Scenario: As User I want to return to learning words
        Then I tap {Icons.menu_book} icon
        And I wait
        And I don't see {'Testing daily words'} text
        And I see {'Words for Today'} text