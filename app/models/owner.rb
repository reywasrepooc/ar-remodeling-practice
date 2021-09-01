class Owner < ActiveRecord::Base
  has_many :projects
  has_many :houses, through: :projects

  def schedule_project(house, price)
    Project.create(house: house, price: price, owner: self)
  end

  def total_cost_of_all_projects
    projects.sum(:price)
  end

  def list_of_all_states
    houses.pluck(:state).uniq
  end
end
