
require 'active_record'

class Phone < ActiveRecord::Base
	validates :phone,
		presence: true
	
	belongs_to :person
end
