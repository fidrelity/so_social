module SoSocial
  module ViewHelpers
    def facebook_button(options = {})
      raw(
        <<-eos
          <script src='http://connect.facebook.net/en_US/all.js#xfbml=1'></script>
          <fb:like href='#{options[:href]}' layout='#{options[:layout]}' show_faces='#{options[:show_faces]}' width='#{options[:width]}'></fb:like>
        eos
      )
    end
  
    def twitter_button(options = {})
      raw(
        <<-eos
          <a class='twitter-share-button left' data-count='horizontal' data-hashtags='' data-text='' data-via='' href='http://twitter.com/share'>
          <script src='http://platform.twitter.com/widgets.js' type='text/javascript'></script>
          </a>
        eos
      )
    end
    
    def googleplus_button(options = {})
      raw(
        <<-eos
          <script src='https://apis.google.com/js/plusone.js' type='text/javascript'></script>
          <div class='g-plusone gplusshare'></div>
        eos
      )
    end 
  end
end