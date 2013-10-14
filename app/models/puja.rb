class Puja < ActiveRecord::Base
  attr_accessible :customer_id, :notes, :offering_date, :paid, :payment_id, :status, :temple_id
end
