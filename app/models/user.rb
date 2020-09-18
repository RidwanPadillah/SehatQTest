class User < ApplicationRecord
    has_many :doctor_books, dependent: :destroy

    validates_presence_of :name, :email, :password
end
