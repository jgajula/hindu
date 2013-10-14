class Temple < ActiveRecord::Base
  attr_accessible :city, :country, :main_god, :name, :state, :status, :street, :street_two, :zipcode
end
