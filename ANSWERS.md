# Q0: Why is this error being thrown?
There is no pokemon model yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing from the seed in the Pokemon database
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
When the button is passed, the pokemon is passed to the pokemon controller so that the pokemon's trainer is updated to the current trainer and saved to the database, so that when the database loads, the trainer owns that pokemon.
# Question 3: What would you name your own Pokemon?
Snorking
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Passed back into trainer + the current trainer's id, which redirects to the page before clicking the damage button.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
