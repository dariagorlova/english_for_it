Feature: Testing knowledge (choose the correct pair 'sentence-by_another_words')

    Background:
        Given the app is running
        When I tap {'learn phrases'} text
        And I wait
        And I tap {'Test the learned'} text
        And I wait

    Scenario: As User I want to see first sentence and answers
        Then I see {'Testing daily phrases'} text
        And I see {"He's proficient in Java."} phrase
        And I see {'be very good at'} text

    Scenario: As User I see another variants
        Then I see {'He has extraordinary coding abilities.'} phrase
        And I see {'He came up with a brilliant plan.'} phrase
        And I see {'We are a customer-centric company.'} phrase

    Scenario: As User I'm making the wrong choice
        When I tap {'He came up with a brilliant plan.'} phrase
        Then I see {1} phrase with {Colors.grey} color
        And I tap {'He has extraordinary coding abilities.'} phrase
        Then I see {2} phrase with {Colors.grey} color

    Scenario: As User I'm be very good at the right choice
        When I tap {"He's proficient in Java."} phrase
        And I wait
        Then I don't see {"He's proficient in Java."} phrase
        And I see {'have experience doing something'} text

    #Scenario: As User I finished test
    #    When I chose the correct variants sentence every time
    #    And I wait
    #    Then I see {'Congratulation! You passed the test!'} text

    Scenario: As User I want to return to learning phrases
        When I tap {Icons.menu_book} icon
        And I wait
        Then I don't see {'Testing daily phrases'} text
        And I see {'Phrases for Today'} text