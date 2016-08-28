class Message < ApplicationRecord
    belongs_to :mission
    belongs_to :task
    
    has_many :users, through: :message_users
    has_many :message_users
end
