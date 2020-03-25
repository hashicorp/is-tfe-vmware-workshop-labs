resource "random_shuffle" "character" {
  input = [
    "Walter White",
    "Skyler White",
    "Jesse Pinkman",
    "Marie Schrader",
    "Hank Schrader",
    "Saul Goodman",
  ]
  result_count = 1
}

output "favorite_character" {
  value = random_shuffle.character.result
}
