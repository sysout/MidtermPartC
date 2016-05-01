class Olympic < ActiveRecord::Base
  validates :athlete_name,  presence: true, allow_blank: false
  validates :country,  presence: true, allow_blank: false
  validates :medal_type, :inclusion => { :in => ["gold", "silver", "bronze"] }
end
