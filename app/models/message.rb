class Message < ActiveRecord::Base
    # enter the name definitely
    validates :name , length: { maximum: 20 } , presence: true
    # enter the contents definitely and the num is 2 to 30
    validates :body , length: { minimum: 2 , maximum: 30 } , presence: true
end
