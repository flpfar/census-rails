class State < ApplicationRecord
  def self.all_from_api
    response = Faraday.get "#{Rails.configuration.api['locales']}/estados"

    return [] unless response.status == 200

    JSON.parse(response.body, symbolize_names: true).map do |state|
      new(locale_id: state[:id], initials: state[:sigla], name: state[:nome])
    end
  end
end
