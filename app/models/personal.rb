class Personal < ActiveRecord::Base
	validates_presence_of :body

	def first_letter
		self.body.strip.chars.first
	end

	def rest_of_text
		self.body.strip[1..-1]
	end

	def signature
		if signed
			"– #{self.signed}"
		else
			nil
		end
	end
end
