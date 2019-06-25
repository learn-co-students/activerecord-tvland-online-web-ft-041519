class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    roles = []
    characters = self.characters.map {|character| character.name}
    shows = self.shows.map {|shows| shows.name}
    role = characters.concat(shows)
    roles << role.join(" - ")
    roles
  end
end