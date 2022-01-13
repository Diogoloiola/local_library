json.extract! book, :id, :title, :summary, :ISBN
json.author_name book.author.name
json.language book.language.name
