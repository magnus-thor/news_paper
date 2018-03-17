Feature: Journalist creates an article
  As a journalist
  To be able to show my articles
  I need to be able to create a article

  Scenario: Journalist creates an article
    Given I am on "new articles" page
    When I fill in "title" with "My first article"
    And I fill in "body" with "I never now what to write here"
    And I attach a file
    And I click on "Create Article"
    Then I am on the article page "My first article"

