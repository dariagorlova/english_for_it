Feature: Learning phrases

    Background:
        Given the app is running
        And I tap {'learn phrases'} text
        And I wait

    Scenario: As User I want to see first phrase
        Then I see {'Phrases for Today'} text
        And I see {'be very good at'} phrase

    Scenario: As User I can't tap previous button when first phrase on the screen
        And I tap {Icons.arrow_back_ios} icon
        Then I see {'be very good at'} phrase

    Scenario: As User I want to see next phrase
        Then I tap {Icons.arrow_forward_ios} icon
        And I don't see {'be very good at'} phrase
        And I see {'have experience doing something'} phrase

    Scenario: As User I can't tap next button when last phrase on the screen
        Then I tap {Icons.arrow_forward_ios} icon {10} times
        And I see {'remove/get rid of'} phrase

    Scenario: As User I want to see translation phrase
        Then I tap {'🇺🇦'} flag
        And I don't see {'be very good at'} phrase
        And I see {'бути досвідченим у'} phrase
        #And I don't see {'🇺🇦'} flag
        And I see {'🇺🇸'} flag

    Scenario: As User I want to see sentence
        Then I tap {'be very good at'} phrase
        And I wait
        And I don't  see {'be very good at'} phrase
        And I see {"He's proficient in Java"} phrase

    Scenario: As User I want to see translation sentence
        Then I tap {'be very good at'} phrase
        #And I wait
        And I tap {'🇺🇦'} flag
        Then I see {'Він досконало володіє Java'} phrase 

    Scenario: As User I want to return to start screen
        Then I tap {Icons.home} icon
        And I wait
        And I don't see {'Phrases for Today'} text
        And I see {'learn words'} text