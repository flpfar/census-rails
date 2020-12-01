require 'rails_helper'

feature 'User views rankings from states' do
  scenario 'succesfully' do
    states_json_content = File.read(Rails.root.join('spec/support/api/get_states.json'))
    states_faraday_response = double('fetch_states', status: 200, body: states_json_content)
    allow(Faraday).to receive(:get).with("#{Rails.configuration.api['locales']}/estados")
                                   .and_return(states_faraday_response)
    rankings_json_content = File.read(Rails.root.join('spec/support/api/get_ranking.json'))
    rankings_faraday_response = double('fetch_rankings', status: 200, body: rankings_json_content)
    allow(Faraday).to receive(:get).with("#{Rails.configuration.api['names']}/ranking?localidade=35")
                                   .and_return(rankings_faraday_response)

    visit root_path
    click_on 'Rankings'
    click_on 'Salvar todas as cidades de um estado'
    click_on 'SP'

    expect(page).to have_content('Dados estão sendo salvos em background')
  end
end
