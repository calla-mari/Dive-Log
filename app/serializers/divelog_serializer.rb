class DivelogSerializer < ActiveModel::Serializer
  attributes :id, :city, :country, :editable

  def editable
    scope == object.user
  end
end
