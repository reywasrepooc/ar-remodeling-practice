class House < ActiveRecord::Base
  has_many :projects
  has_many :owners, through: :projects
end
