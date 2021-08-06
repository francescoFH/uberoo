class TakeawayKitchen
  def initialize
    @menu = [
      { dish: "Edamame", price: 3 },
      { dish: "Salmon Sashimi", price: 5 },
      { dish: "Toro Sashimi", price: 7 },
      { dish: "Salmon Nigiri", price: 6 },
      { dish: "Toro Nigiri", price: 8 },
      { dish: "California Maki", price: 7 },
      { dish: "Matcha Mochi", price: 2 },
      { dish: "Mango Mochi", price: 2 },
    ]

  end

  def menu
    @menu.dup
  end
  
end
