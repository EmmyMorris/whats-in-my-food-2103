class FoodFacade
  def self.foods_by_ingredient(ingredient)
    json = FoodService.foods_by_ingredient(ingredient)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
