Review Foods
This program displays the products of Mario's specialty foods and allows users to leave reviews.
By Bryon Burke
SPECIFICATIONS

1. As an admin, I should be able to log in and log out of the application.
2. As an admin, I should be able to add, update and delete products.
3. As an admin, I should be able to add reviews.
4. As an admin, I want to ensure that other users don't have access to CRUD functionality.
5. As a user, I want to be able to create an account and add a review to a product. (A product can have many comments.) This is the only CRUD functionality a user can have.

Setup/Installation Requirements
clone and open the file locally
in terminal run:
$git clone https://github.com/BryonBurke/review_foods

in terminal run:
  rake db:create
  rake db:migrate
  rake db:seed
  rails s
  open a browser and navigate to: localhost:3000

Known Bugs
No known bugs

Support and contact details
_If you have any issues with the program or want to reach out, email bryonparis@gmail.com

Technologies Used
This program utilized:

RUBY and was built on Atom
License
Licensed under MIT license

Copyright (c) 2019 Bryon Burke
