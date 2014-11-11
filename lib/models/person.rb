
require 'active_record'

class Person < ActiveRecord::Base
	validates :first_name,
		presence: true

	validates :last_name,
		presence: true
	
	has_many :emails
	has_many :phones
end
