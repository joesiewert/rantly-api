class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email
  has_many :rants
end
