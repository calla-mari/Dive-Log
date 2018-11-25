class DivelogSerializer < ActiveModel::Serializer
  attributes :id, :city, :country, :site, :date, :time, :editable

  def editable
    scope == object.user
  end
end
