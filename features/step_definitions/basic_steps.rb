Given("I am on {string} page") do |page_path|
  visit page_path.split(" ").reverse.join("/")
end

When("I fill in {string} with {string}") do |field, text|
  fill_in(field, with: text)
end

When("I click on {string}") do |button_link|
  click_link_or_button button_link
end

Then("I am on the article page {string}") do |title|
  article = Article.find_by(title: title)
  expect(current_path).to eq article_path(article)
end

And(/^I attach a file$/) do
  attach_file('article_image', "#{::Rails.root}/spec/fixtures/dummy_image.jpg")
end