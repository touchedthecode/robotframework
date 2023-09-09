*** Settings ***
Documentation     This is nowadays allowed in resource files. But only shown in doc generated by Libdoc.
Resource          resources_imported_by_resource.robot
Variables         variables_imported_by_resource.py
Library           OperatingSystem
Resource          resource_with_testcase_table.robot

Test Setup        Not allowed in resources
Non Existing

*** Variables ***
${resources}      Variable from resources.robot

*** Keywords ***
resources
    [Documentation]    Keyword from resources.robot
    Resources Imported By Resource