class Search
  def initialize(house)
    @house = house
  end

  def character_count
    characters.count
  end

  def characters
    service = PotterService.new
    all_characters = service.characters

    order_characters = []

    all_characters.each do |character|
      if character[:house] == @house && character[:orderOfThePhoenix] == true
        order_characters << Character.new(character)
      end
    end
    order_characters
  end
end
