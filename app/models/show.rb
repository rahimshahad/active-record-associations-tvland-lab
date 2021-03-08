class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.characters.map do |c|
            "#{c.actor.first_name} #{c.actor.last_name}"
        end
    end
      
end