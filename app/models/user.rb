class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def name= (aName)
    @name = [self.first_name, self.last_name].compact.join(' ')
  end
  
  def name
    return @name
  end
end
