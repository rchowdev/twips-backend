class ClipSerializer < ActiveModel::Serializer
  attributes :id, :title, :broadcaster, :thumbnail, :twitch_tr_id
end
