# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Recipe.create(name: "Lasagna", description: "This is Lasagna's best", image: "Lasagna.jpg", ingredients: "1 (16 ounce) package lasagna noodles; 1/2 pound ground pork; 1/2 pound lean ground beef;1 (8 ounce) can tomato sauce; 1 (28 ounce) can crushed tomatoes;1 tablespoon chopped fresh parsley; 1 clove garlic, crushed; 1/2 teaspoon dried oregano; 1/2 cup minced onion; 1/8 teaspoon white sugar; 1 1/2 teaspoons dried basil;1 1/2 teaspoons salt;1 pound small curd cottage cheese; 3 eggs;3/4 cup grated Parmesan cheese; 2 teaspoons salt; 1/4 teaspoon ground black pepper; 1 pound shredded mozzarella cheese", directions: " Preheat oven to 375 degrees F (190 degrees C). Bring a large pot of lightly salted water to a boil. Add noodles and cook for 8 to 10 minutes or until al dente; drain and set aside.;
Place pork and beef in a large, deep skillet. Cook over medium high heat until evenly brown. Stir in tomato sauce, crushed tomatoes, parsley, garlic, oregano, onion, sugar, basil and salt. Simmer over medium-low heat for 30 minutes, stirring occasionally.;
In a large bowl, combine cottage cheese, eggs, Parmesan cheese, parsley, salt and pepper.;
In a 9x13 inch baking dish, place 2 layers of noodles on the bottom of dish; layer 1/2 of the cheese mixture, 1/2 of the mozzarella cheese and 1/2 of the sauce; repeat layers.;
Cover with aluminum foil and bake in preheated oven for 30 to 40 minutes. Remove foil and bake for another 5 to 10 minutes; let stand for 10 minutes before cutting; serve.")

r2 = Recipe.create(name: "Chicken Enchiladas", description: "Enchiladas done right", image: "Enchiladas.jpg", ingredients: "10 to 12 corn tortillas;
                   2 tablespoons cumin;
                   2 tablespoons chili powder, plus more for sprinkling;
                   2 tablespoons Cajun spice;
                   1 teaspoon salt;
                   1 teaspoon freshly ground black pepper;
                   2 boneless, skinless chicken breasts;
                   1/4 cup vegetable oil;
                   1 large onion, diced;
                   Three 15-ounce cans green enchilada sauce (or use red if preferred!);
                   3 cups grated Cheddar-Jack cheese, plus more if needed;
                   Sour cream, for serving;
                   Diced tomatoes, for serving;
                   Chopped fresh cilantro, for serving;
                   Lime wedges, for serving;", directions: "Preheat the oven to 350 degrees F.;

                   One at a time, hold the tortillas over the stovetop burner (heated to medium heat) to brown slightly, about 30 seconds per side. Set the warmed tortillas aside.;

                   In a bowl, mix together the cumin, chili powder, Cajun spice, salt and pepper. Sprinkle both sides of the chicken breasts with the spice mix.;

                   Heat the oil in a skillet over medium heat and cook the chicken on both sides until done in the middle and the juices run clear, 4 to 5 minutes per side. Set aside on a plate to cool, then shred finely with a fork.;

                   Throw the onions into the same skillet, stir them around and cook until deep golden brown and caramelized, 4 to 5 minutes; set them aside on a plate. Pour the enchilada sauce into the skillet and reduce the heat to low, allowing it to warm through.;

                   To assemble the enchiladas: Pour 2 cups of the sauce into a 9-by-13-inch casserole dish and leave the rest in the skillet. Dip a tortilla into the sauce in the skillet, then lay it on a baking sheet or plate. Sprinkle some cheese down the middle, followed by some chicken and finally, some of the caramelized onions. Roll it up tightly, then place it seam-side down in the casserole dish. Repeat with the rest of the tortillas. Pour the rest of the sauce over the enchiladas, then sprinkle on the rest of the cheese. Give it a final sprinkling of chili powder.;

                   Bake until hot and bubbly, 30 minutes. Let it sit for 15 to 20 minutes before serving.;

                   Serve the enchiladas topped with a dollop of sour cream, a sprinkle of diced tomatoes, a sprinkling of cilantro and a wedge of lime.

                   Recipe courtesy of Ree Drummond")

u1 = User.create(first_name: "Anthony", last_name: "LaMartina", email: "lamartaa@uwec.edu", password: "123", role: "admin")
u2 = User.create(first_name: "Jeremy", last_name: "Hunt", email: "jhunt@email.com", password: "123",  role: "admin")
u3 = User.create(first_name: "Tony", last_name: "LaMartina", email: "tony.143@hotmail.com", password: "123", role: "admin")

c1 = Comment.create(email: "lamartaa@uwec.edu", message: "This is a comment", recipe_id: 1)
