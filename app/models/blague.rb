class Blague < ApplicationRecord
    validates :name, presence:true
    validates :content, presence:true
end
