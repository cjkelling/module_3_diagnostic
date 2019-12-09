class Character
  attr_reader :name, :role, :house, :partonus

  def initialize(character)
    @name = character[:name]
    @house = character[:house]

    if character[:role]
      @role = character[:role]
    end

    if character[:partonus]
      @partonus = character[:partonus]
    end
  end
end
