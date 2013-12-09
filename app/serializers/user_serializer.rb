class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :access_token, :user_id

  has_many :todos

  def access_token
    object.session_api_key.access_token
  end

  def user_id
    object.session_api_key.user_id
  end
end
