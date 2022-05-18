class ProfileSerializer < ActiveModel::Serializer
  # Display only the following attributes
  attributes :id, :username, :firstname, :lastname, :email
end
