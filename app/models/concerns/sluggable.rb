module Sluggable
  extend ActiveSupport::Concern

  included do |base|

    unless defined?(DEFAULT_SLUG_CHARS)
      DEFAULT_SLUG_CHARS = (('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a).freeze
      DEFAULT_SLUG_SIZE  = 20
    end

    cattr_accessor :slug_chars
    cattr_accessor :slug_size

    validates :slug, presence: true, uniqueness: true

    # Create a random public identifier
    def create_slug
      if slug.blank?
        slug_chars = self.class.slug_chars || Sluggable::DEFAULT_SLUG_CHARS
        slug_size  = self.class.slug_size  || Sluggable::DEFAULT_SLUG_SIZE
        loop do
          self.slug = slug_chars.sample(slug_size).join
          break if self.class.where(slug: slug).blank?
        end
      end
    end

    before_validation :create_slug, on: :create

    def to_param
      slug
    end

    def to_s
      slug
    end

  end
end
