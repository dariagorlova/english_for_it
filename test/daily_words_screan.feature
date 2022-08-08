Feature: Learning words

    Background:
        Given the app is running
        And I tap {"Let's start"} text
        #And I wait {1} second
        And I wait

    Scenario: As User I want to see first word
        Then I see {'Words for Today'} text
        And I see {'developer'} text

    Scenario: As User I can't tap previous button when first word on the screen
        And I tap {Icons.arrow_back_ios} icon
        Then I see {'developer'} text

    Scenario: As User I want to see next word
        Then I tap {Icons.arrow_forward_ios} icon
        I don't see {'developer'} text
        And I see {'computer'} text

    Scenario: As User I can't tap next button when last word on the screen
        And I tap {Icons.arrow_forward_ios} icon 
        And I wait
        And I tap {Icons.arrow_forward_ios} icon
        Then I see {'computer'} text 
