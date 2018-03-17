Feature: Journalist creates an article
  As a journalist
  To be able to show my articles
  I need to be able to create a article

  Scenario: Journalist creates an article
    Given I am on "new article" page
    When I fill in "title" with "My first article"
    And I fill in "content" with "I never now what to write here"
    And I click on "create"
    Then I am on the article page "My first article"

