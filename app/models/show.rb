class Show < ActiveRecord::Base
belongs_to :network
has_many :characters
has_many :actors, through: :characters

 def actors_list
    actors_arr =[]
    self.characters.map do |tr|
        actors_arr << "#{tr.actor.first_name} #{tr.actor.last_name}"
    end
    actors_arr
 end

end