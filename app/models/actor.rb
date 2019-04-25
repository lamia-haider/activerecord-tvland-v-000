require pry

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    all_characters = []
    self.characters.each do |c| all_characters << c.name
    end
    binding.pry
    all_characters
  end


end
