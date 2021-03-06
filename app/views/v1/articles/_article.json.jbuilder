json.article do
  json.id article.id
  json.title article.title
  json.moods article.mood_list
  json.categories article.category_list
  json.content article.content
  json.type article.article_type
  json.author do
    json.id article.author.id
    json.first_name article.author.first_name
    json.last_name article.author.last_name
  end
  json.locations article.locations do |location|
    json.id location.id

    json.name location.name
    json.longitude location.longitude
    json.latitude location.latitude
  end
end