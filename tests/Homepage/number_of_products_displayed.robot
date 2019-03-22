*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  homepage.homepage


*** Variables ***



*** Test Cases ***
Home page should have 16 items displayed
    [Tags]    DEBUG
    When open browser  about:blank  Chrome
    Then go to  http://demostore.supersqa.com
    Then verify 16 products are displayed
    And close browser

#*** Keywords ***
#Provided precondition
#    Setup system under test