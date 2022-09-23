Feature: Learning words

    Background:
        Given the app is running
        And I tap {'learn words'} text
        And I wait

    Scenario: As User I want to see first word
        Then I see {'Words for Today'} text
        And I see {'developer'} text

    Scenario: As User I can't tap previous button when first word on the screen
        And I tap {Icons.arrow_back_ios} icon
        Then I see {'developer'} text

    Scenario: As User I want to see next word
        Then I tap {Icons.arrow_forward_ios} icon
        And I don't see {'developer'} text
        And I see {'computer'} text

    Scenario: As User I can't tap next button when last word on the screen
        Then I tap {Icons.arrow_forward_ios} icon {10} times
        And I see {'deadline'} text

    Scenario: As User I want to return to start screen
        Then I tap {Icons.home} icon
        And I wait
        And I don't see {'Words for Today'} text
        And I see {'learn words'} text

       

