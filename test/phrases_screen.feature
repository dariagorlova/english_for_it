Feature: Learning phrases

    Background:
        Given the app is running
        When I tap {'learn phrases'} text
        And I wait

    Scenario: As User I want to see first phrase
        Then I see {'Phrases for Today'} text
        And I see {'be very good at'} text

    Scenario: As User I can't tap previous button when first phrase on the screen
        When I tap {Icons.arrow_back_ios} icon
        Then I see {'be very good at'} text

    Scenario: As User I want to see next phrase
        When I tap {Icons.arrow_forward_ios} icon
        Then I don't see {'be very good at'} text
        And I see {'have experience doing something'} text

    Scenario: As User I can't tap next button when last phrase on the screen
        When I tap {Icons.arrow_forward_ios} icon {10} times
        Then I see {'remove/get rid of'} text

    Scenario: As User I want to see translation phrase
        When I tap {'🇺🇦'} flag
        Then I don't see {'be very good at'} text
        And I see {'бути досвідченим у'} text
        #And I don't see {'🇺🇦'} flag
        And I see {'🇺🇸'} flag

    Scenario: As User I want to see sentence
        When I tap {'be very good at'} text
        And {1000} millisecond elapsed
        Then I don't  see {'be very good at'} text
        And I see {"He's"} phrase

    Scenario: As User I want to see translation sentence
        When I tap {'be very good at'} text
        And {1000} millisecond elapsed
        And I tap {'🇺🇦'} flag
        Then I see {'Він досконало володіє Java.'} text 

    Scenario: As User I want to return to start screen
        When I tap {Icons.home} icon
        And I wait
        Then I don't see {'Phrases for Today'} text
        And I see {'learn words'} text