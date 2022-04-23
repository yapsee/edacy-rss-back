class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image
end
