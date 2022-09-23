Feature: Testing knowledge (choose the correct pair 'sentence-by_another_words')

    Background:
        Given the app is running
        And I tap {'learn phrases'} text
        And I wait
        And I tap {'Test the learned'} text
        And I wait

    Scenario: As User I want to see first sentence and answers
        Then I see {'Testing daily phrases'} text
        And I see {"He's proficient in Java"} text
        And I see {'be very good at'} text

    Scenario: As User I see another variants
        Then I see {'have experience doing something'} text
        Then I see {'opinion/position'} text
        Then I see {'very solid'} text

    Scenario: As User I'm making the wrong choice
        Then I tap {'has a background'} text
        And I see {1} text with {Colors.grey} color
        And I tap {'opinion/position'} text
        And I see {2} text with {Colors.grey} color

    Scenario: As User I'm be very good at the right choice
        Then I tap {'розробниця'} text
        And I wait
        And I don't see {"He's proficient in Java"} text
        And I see {'He has a background in industrial design.'} text

    Scenario: As User I finished test
        When I chose the correct variants every time
        And I wait
        Then I see {'Congratulation! You passed the test!'} text

    Scenario: As User I want to return to learning phrases
        Then I tap {Icons.menu_book} icon
        And I wait
        And I don't see {'Testing daily phrases'} text
        And I see {'Phrases for Today'} text