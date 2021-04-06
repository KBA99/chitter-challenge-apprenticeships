
feature 'adding peeps' do
  scenario 'user can add peeps' do
    visit ('/peeps/new')

    fill_in 'peep', with: "This is a new peep!"
    click_on 'Send Peep'

    #reroute to the index page
    expect(page).to have_content "This is a new peep!"
  end
end