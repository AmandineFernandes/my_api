require 'faker'

# Supprime les données existantes pour éviter les doublons
Article.delete_all

# Crée de nouveaux articles avec des données générées par Faker
30.times do
  Article.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 3)
  )
end


