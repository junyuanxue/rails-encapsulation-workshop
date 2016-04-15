require 'rails_helper'

feature 'showing article word count' do
  let!(:article) { Article.create(title: "bleh", text: "blah blah blah") }
  scenario 'showing article word count' do
    visit article_path(article)
    expect(page).to have_content "bleh"
    expect(page).to have_content "Word Count: 3"
  end
end
