alias MyTest.{Repo, Movie}

# Insert the new movie into the database
new_movie = %Movie{title: "New Movie", category: "Action", shop_id: 1} # Replace 1 with the actual shop ID
Repo.insert!(new_movie)







IO.puts("New movie added successfully.")
