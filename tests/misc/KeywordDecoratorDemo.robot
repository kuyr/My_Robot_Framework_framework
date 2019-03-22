*** Settings ***
Library  miscLibraries.TheKeywordDecorator

*** Test Cases ***
Refund calculated correctly
    The user has requested for a refund
    the_order_should_be_refunded_fully

