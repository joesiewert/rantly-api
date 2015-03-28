class RantSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id, :created_at
end
