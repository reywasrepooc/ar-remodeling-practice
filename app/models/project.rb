class Project < ActiveRecord::Base
  belongs_to :owner
  belongs_to :house

  def self.total_cost
    all.sum(:price)
  end

  def install_solar_and_update_price_by_500
    if house.solar
      puts "You're good to go."
    else
      house.update(solar: true)
      update(price: price + 500)
      puts "Solar added to this project. The new price is #{price}"
    end
  end
end
