Feature: Testing knowledge (choose the correcct translation of the Ukrainian word)

    Background:
        Given the app is running
        And I tap {'learn words'} text
        And I wait
        And I tap {'Translate UA to EN'} text
        And I wait

    Scenario: As User I want to see first word and answers
        Then I see {'Testing daily words'} text
        And I see {'розробниця'} text
        And I see {'developer'} text

    Scenario: As User I'm making the wrong choice
        Then I tap {'code'} text
        And I see {1} text with {Colors.grey} color
        And I tap {'task'} text
        And I see {2} text with {Colors.grey} color

    Scenario: As User I'm making the right choice
        Then I tap {'developer'} text
        And I wait
        #And I don't see {'розробниця'} text
        And I see {'компʼютер'} text

    #Scenario: As User I finished test
    #    When I chose the correct EN translation every time
    #    And I wait
    #    Then I see {'Congratulation! You passed the test!'} text

    Scenario: As User I want to return to learning words
        Then I tap {Icons.menu_book} icon
        And I wait
        And I don't see {'Testing daily words'} text
        And I see {'Words for Today'} text