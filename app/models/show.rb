class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
     
  characters.collect do |character|
    binding.pry
      character.actor.full_name
      
      end
   end
end