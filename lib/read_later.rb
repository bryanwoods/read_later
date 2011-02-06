class ReadLater
  attr_accessor :url,
                :title,
                :border,
                :scrolling,
                :width,
                :height,
                :transparency,
                :frameborder

  def initialize
    @url          = url
    @title        = title
    @border       = border
    @scrolling    = scrolling
    @width        = width
    @height       = height
    @transparency = transparency 
    @frameborder  = frameborder
  end

  def border
    @border.nil? ? 0 : @border
  end

  def scrolling
    @scrolling.nil? ? "no" : @scrolling
  end

  def width
    @width.nil? ? 87 : @width
  end

  def height
    @height.nil? ? 17 : @height
  end

  def transparency
    @transparency.nil? ? true : @transparency
  end

  def frameborder
    @frameborder.nil? ? 0 : @frameborder
  end

  def instapaper_button(url, title = nil, *args)
    button = <<-EOF
<script type='text/javascript'>
//<![CDATA[
  if ('readlater'.indexOf('readlater') >= 0) {
    document.write('<iframe border="#{@border}" scrolling="#{scrolling}"' +
    'width="#{width}" height="#{height}", allowtransparency="#{transparency}"' +
    'frameborder="#{frameborder}" style="margin-bottom: -3px; z-index: 1338;' + 
    'border: 0px; background-color: transparent; overflow: hidden;"' +
    'src="http://www.instapaper.com/e2?url=#{url.to_s.gsub("/", "%2f")}' + 
    '&title=#{title}"></iframe>');
  }
//]]>
</script>
    EOF
  end

  def readability_button
    button = <<-EOF
<div id='rdbWrapper'></div>
<script type='text/javascript'>
(function() {
    var s     = document.getElementsByTagName('script')[0],
        rdb   = document.createElement('script');
    rdb.type  = 'text/javascript';
    rdb.async = true;
    rdb.src   = document.location.protocol + '//www.readability.com/embed.js';
    s.parentNode.insertBefore(rdb, s);
})();
</script>
    EOF
  end

  alias_method :read_later_button, :instapaper_button
end

