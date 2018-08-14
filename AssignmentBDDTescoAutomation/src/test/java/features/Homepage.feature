Feature: Verify home page
Background:
Given I am on home page

@tag1
Scenario: Verify home page title
  /Given I am on home page
  Then I should see "F&F | High Quality Clothing & Accessories | Tesco" title
  
@tag1
  Scenario: Verify Groceries tab on home page
  When I click on "//ul[@class='navbar-content']/li[1]/div/a/h3" button
  Then the page url should contain "groceries"
  
@tag1
  Scenario Outline: Verify tabs on home page
  When I click on "<locator>" button
  Then the page url should contain "<path>"
  Examples:
  | locator | path |
  |//ul[@class='navbar-content']/li[1]/div/a/h3 |groceries|
  |//ul[@class='navbar-content']/li[2]/div/a/h3 | clothing|
  |//ul[@class='navbar-content']/li[3]/div/a/h3 | clubcard|
  |//ul[@class='navbar-content']/li[5]/div/a/h3 | mobile-phones|
  |//ul[@class='navbar-content']/li[6]/div/a/h3 | wine|
  