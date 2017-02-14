require 'SecureRandom'

class Set_user
  def initialize(name)
    @name = name
    @id = ""
  end

#  include SecureRandom

  def make_id
    @id = SecureRandom.uuid
  end

  def display_id
    puts @name
    puts @id
  end

end

new_user = Set_user.new("Seth")
new_user.make_id
new_user.display_id
