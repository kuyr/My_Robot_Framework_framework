*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
${HOME PAGE URL}  http://demostore.supersqa.com
${SEARCH FIELD ID}  woocommerce-product-search-field-0
${EXISTING ITEM SEARCH TERM}  Beanie with Logo
${EXPECTED URL TEXT}  /product/beanie-with-logo/
${ASCI CODE FOR ENTER}  \\13

${MSG BOX CLASS}  woocommerce-info
${NOT FOUND MSG}  No products were found matching your selection

*** Test Cases ***
User should be able to search for an existing product
    [Tags]    DEBUG
    open browser   about:blank  Chrome
    go to  ${HOME PAGE URL}
    input text   ${SEARCH FIELD ID}   ${EXISTING ITEM SEARCH TERM}
    press key  ${SEARCH FIELD ID}  ${ASCI CODE FOR ENTER}
    location should contain   ${EXPECTED URL TEXT}
    close browser


User should see correct message when searching none existing item
    [Tags]    DEBUG
    open browser   about:blank  Chrome
    go to  ${HOME PAGE URL}
    input text   ${SEARCH FIELD ID}   ${EXISTING ITEM SEARCH TERM}
    press key  ${SEARCH FIELD ID}  ${ASCI CODE FOR ENTER}
    location should contain   ${EXPECTED URL TEXT}
    close browser

*** Keywords ***
Provided precondition
    Setup system under test