class Payment < ActiveRecord::Base
  attr_accessible :cancelled, :charged_money, :customer_charged, :processing_fee, :returned, :service_charge, :temple_money
end
