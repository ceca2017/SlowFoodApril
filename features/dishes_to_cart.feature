Feature: Add dishes to menu
  As a visitor
  In order to select a dish that I´d like to order
  I would like to place it in the cart

  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

    Given the following restaurants exist
      | name                | address           | email               | phone         | rest_category | description             |
      | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! |
      | Backyard Burger     | Burger Drive      |                     |               | Fast food     |                         |

    Given the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | Backyard Burger     |
      | Breakfast menu          | Backyard Burger     |
      | Sushi Menu              | Backyard Burger     |

    Given the following dishes exist
      | name                    | description                             | price      | menu                      | restaurant           |
      | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
      | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | Backyard Burger      |
      | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | Backyard Burger      |
      | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | Backyard Burger      |

  Scenario: Adding dish to cart
    Given I visit the landing page
    And I click on link "Backyard Burger"
    And I click on link "Full menu"
    Then I should see "Giant Burger"
    Given I click on link "Add Giant Burger to cart"
    Then I should see "Giant Burger added to cart"
