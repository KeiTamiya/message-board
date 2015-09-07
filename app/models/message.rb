class Message < ActiveRecord::Base
    # enter the name definitely
    validates :name , length: { maximum: 20 } , presence: true
    # enter the age in number definitely and the num must be 0 to 1000
    validates :age , :inclusion => { :in => 0..1000, :message => "must be between 0 and 1000" } , numericality: { only_integer: true } , presence: true
    # enter the contents definitely and the num must be 2 to 30
    validates :body , length: { minimum: 2 , maximum: 30 } , presence: true
end
