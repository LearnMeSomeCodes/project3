
require 'active_record'

class Email < ActiveRecord::Base
	validates :email,
		presence: true
	
	validates :label,
		presence: true
		
	belongs_to :person
end
