class Article < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :slug, Fae.validation_helpers.slug

  def fae_display_field
    title
  end

  has_fae_file :pdf

  has_fae_image :hero_image


  belongs_to :article_category
end
