class Actor < ActiveRecord::Base
  has_many :characters
 has_many :shows, through: :characters

 def full_name
    "#{self.first_name} #{self.last_name}"
 end

 def list_roles
  roles = []
  self.characters.map do |tr|
   roles << "#{tr.name} - #{tr.show.name}"
  end
  roles
 end
end