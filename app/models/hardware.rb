class Hardware < ApplicationRecord
	def promocao?
		valor < 100
	end

	def self.created_at
		where('created_at <= ?', Time.now).order('created_at desc')
	end
end
