class Stall < ActiveRecord::Base

 scope :search, -> (search_term) {where('name LIKE ?', "%#{search_term}%")}
end
