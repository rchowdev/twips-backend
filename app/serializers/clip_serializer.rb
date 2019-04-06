class ClipSerializer < ActiveModel::Serializer
  attributes :title, :broadcaster, :thumbnail, :twitch_tr_id
end
