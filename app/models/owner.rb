class Owner < ActiveRecord::Base
  has_many :projects
  has_many :houses, through: :projects

  def schedule_project(house, price)
    Project.create(owner: self, house: house, price: price)
  end

  def total_cost_of_all_projects
    projects.pluck(:price).sum
  end

  def list_of_all_states
    houses.pluck(:state).uniq
  end
end
