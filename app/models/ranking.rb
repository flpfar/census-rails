class Ranking
  def self.from_locale_api(locale_id)
    response = Faraday.get "#{Rails.configuration.api['names']}/ranking?localidade=#{locale_id}"

    return [] unless response.status == 200

    parsed = JSON.parse(response.body, symbolize_names: true)[0]
    parsed[:res].map do |name|
      RankedName.new(name: name[:nome], ranking: name[:ranking], rate: name[:frequencia])
    end.sort_by(&:rate)
  end
end
