class Producttype < ActiveRecord::Base
  attr_accessible :title
  
  has_many :producttypefields
  
end
