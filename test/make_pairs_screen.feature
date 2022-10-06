Feature: Testing knowledge (make pairs)

    Background:
        Given the app is running
        And I tap {'learn words'} text
        And I wait
        And I tap {'Make pairs'} text
        And I wait

    Scenario: As User I want to see all words with translate
        Then I see {'Make pairs'} text
        And I see {'developer'} text
        And I see {'розробниця'} text

    Scenario: As User I choose word 
        Then I tap {'developer'} text
        And I see card with {Colors.blue.shade200} color {1} times

    Scenario: As User I choose another word in same column
        Then I tap {'developer'} text
        And I tap {'computer'} text
        Then I see card with {Colors.blue.shade200} color {1} times

    Scenario: As User I choose two words in different columns (right choice)
        Then I tap {'developer'} text
        And I tap {'розробниця'} text
        Then I see card with {Colors.green.shade300} color {2} times

    Scenario: As User I choose two words in different columns (wrong choice)
        Then I tap {'developer'} text
        And I tap {'помилка'} text
        Then I see card  with {Colors.red.shade300} color {2} times

    #Scenario: As User I make right choice all time
    #    Then I tap correct pairs all times
    #    And I wait
    #    Then I see {'Congratulation! You passed the test!'} text

    Scenario: As User I want to return to learning words
        Then I tap {Icons.menu_book} icon
        And I wait
        #And I don't see {'Make pairs'} text
        And I see {'Words for Today'} text