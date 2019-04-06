class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :clips
end
