class Stall < ActiveRecord::Base

 scope :searchname, -> (search_term) {where('name LIKE ?', "%#{search_term}%")}
  scope :searchplace, -> (search_term) {where('place LIKE ?', "%#{search_term}%")}
end
