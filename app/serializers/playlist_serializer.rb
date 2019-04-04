class PlaylistSerializer < ActiveModel::Serializer
  attributes :id
  has_many :clips
end
