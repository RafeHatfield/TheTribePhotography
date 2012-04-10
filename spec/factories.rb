Factory.define :article do |article|
  article.title               "The Factory Article Title"
  article.body                "I am the body text for the factory article"
  article.published_at        Time.now
  article.excerpt             "I am the factory article excerpt"
  article.active              true
end