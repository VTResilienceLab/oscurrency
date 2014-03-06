class Charge < ActiveRecord::Base
  attr_accessible :stripe_id, :description, :amount, :status, :person_id
  
  validates_inclusion_of :status, :in => ['pending', 'paid', 'refunded', 'disputed']
  belongs_to :person
  validates_presence_of [:stripe_id, :description, :amount, :status, :person_id]
end