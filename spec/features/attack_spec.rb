require "player"
require "./app"

feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Bertie attacked Alex')
    expect{ $player2.receive_damage }.to change{ $player2.hit_points }.by(-10)
  end
end
