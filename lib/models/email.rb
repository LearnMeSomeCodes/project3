
require 'active_record'

class Email < ActiveRecord::Base
	validates :email,
		presence: true
	
	belongs_to :person
end
