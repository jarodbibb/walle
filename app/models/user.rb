class User < ActiveRecord::Base
    validates :name, presence:true, uniqueness: true, length: { minimum: 5}
    has_many :messages
end
