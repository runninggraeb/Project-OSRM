@routing @options
Feature: Command line options: version

    Background:
        Given the profile "testbot"
    
    Scenario: Version, short
        When I run "osrm-routed --v"
        Then stderr should be empty
        And stdout should contain 1 line
        And stdout should contain /v\d{1,2}\.\d{1,2}\.\d{1,2}/
        And it should exit with code 0

    Scenario: Version, long
        When I run "osrm-routed --version"
        Then stderr should be empty
        And stdout should contain 1 line
        And stdout should contain /v\d{1,2}\.\d{1,2}\.\d{1,2}/
        And it should exit with code 0