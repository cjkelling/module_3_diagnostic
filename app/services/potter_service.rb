class PotterService
  def conn
    Faraday.new(url: 'https://www.potterapi.com') do |f|
      f.adapter Faraday.default_adapter
      f.params[:key] = ENV['KEY']
    end
  end

  def characters
    response = conn.get("https://www.potterapi.com/v1/characters")
    JSON.parse(response.body, symbolize_names: true)
  end
end
