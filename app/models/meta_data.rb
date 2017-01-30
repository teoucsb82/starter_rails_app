class MetaData
  def initialize(options = {})
    @title       = options[:title]
    @description = options[:description]
    @image       = options[:image]
    @keywords    = options[:keywords]
    @current_url = options[:current_url]
  end

  def seo
    # REPLACE THESE WITH REAL VALUES
    {
      site: 'My Site',
      title: @title,
      keywords: @keywords,
      description: @description,
      image_src: @image,
      author: 'My Name',
      canonical: 'http://yoursite.com/canonical/url',
      reverse: true,
      twitter: {
        card: 'summary_large_image',
        site: '@twitterHandle',
        title: @title,
        description: @description,
        image: @image
      },
      og: {
        title: @title,
        description: @description,
        url: @current_url,
        image: @image
      },
      icon: [
        { href: '/images/icons/icon_96.png', sizes: '32x32 96x96', type: 'image/png' },
        { href: '/images/icons/icon_itouch_precomp_32.png', rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
      ]
    }
  end
end
