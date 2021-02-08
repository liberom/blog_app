require 'rails_helper'

# - Visit root page
# - Click new article
# - Fill the title
# - Fill the body
# - Create article
# Result:
# - Message: Article has been created
# - Articles path

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title", with: "Creating a blog"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end
