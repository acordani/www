module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META['meta_title']
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META['meta_description']
  end

  def meta_image
    content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META['meta_image']
  end

  def facebook_meta_title
    content_for?(:facebook_meta_title) ? content_for(:facebook_meta_title) : DEFAULT_META["facebook_meta_title"]
  end

  def facebook_meta_description
    content_for?(:facebook_meta_description) ? content_for(:facebook_meta_description) : DEFAULT_META["facebook_meta_description"]
  end
end

