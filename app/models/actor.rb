class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    name = "#{self.first_name} #{self.last_name}"
  end 

  def list_roles
    all_roles = []
    c_names_array = self.characters.map {|character| character.name}
    s_names_array = self.shows.map {|shows| shows.name}
    role = c_names_array.concat(s_names_array)
    all_roles << role.join(" - ")
    all_roles
  end 

end

