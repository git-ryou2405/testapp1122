class User < ApplicationRecord
  has_many :send_histories, dependent: :destroy
end
