class Article < ActiveRecord::Base
	validates :title,
		presence: true,
		uniqueness: true,
		length: { in: 5..50 }

	validates :text,
		presence: true,
		length: { in: 10..1000 }


end
