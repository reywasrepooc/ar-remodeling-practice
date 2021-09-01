class House < ActiveRecord::Base
  has_many :projects
  has_many :owners, through: :projects

  def self.oldest_house
    order(:year_built).first
  end

  def self.get_houses_with_solar
    find_by(solar: true)
  end

  def install_solar
    solar ? puts("This house already has solar installed") : update(solar: true)
  end

  def schedule_project(owner, price)
    Project.create(owner: owner, price: price, house: self)
  end

  def total_remodeling_cost
    projects.sum(:price)
  end


end
