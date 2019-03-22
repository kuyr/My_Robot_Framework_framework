
*** Settings ***
Documentation    Suite description
Library  miscLibraries.FirstPythonCustomLibraryClass
Library  miscLibraries.FirstPythonCustomLibraryModule

*** Test Cases ***

First test case with custom library
     first method in custom
     second method in custom

first test case with custom library and class
    first keyword in class
    second keyword in class
