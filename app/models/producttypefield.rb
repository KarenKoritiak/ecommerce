class Producttypefield < ActiveRecord::Base
  attr_accessible :defaultvalue, :name, :required
  
  has_one :fieldtype
  belongs_to :producttype
  
  
end
