exit if !Rails.env.development?

puts "Deleting the Data"
Recipe.delete_all
User.delete_all

puts "Creating User"
user = User.create(:user, email: "test@example.com")

puts "Creating Recipes"
20.times do
  Recipe.create(:recipe, user: user)
end
