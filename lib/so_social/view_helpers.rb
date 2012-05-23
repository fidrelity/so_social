module SoSocial
  module ViewHelpers
    def facebook_button(options = {})
      raw(
        <<-eos
          <script src='http://connect.facebook.net/en_US/all.js#xfbml=1'></script>
          <fb:like href='#{options[:href]}' send='#{options[:send]}' layout='#{options[:layout]}'
            show_faces='#{options[:show_faces]}'  width='#{options[:width]}'  action='#{options[:action]}'
            font='#{options[:font]}'  colorscheme='#{options[:colorscheme]}'  ref='#{options[:ref]}'></fb:like>
        eos
      ) 
    end
  
    def twitter_button(options = {})
      raw(
        <<-eos
          <a class='twitter-share-button left' data-url='#{options[:url]}' data-via='#{options[:via]}' data-text='#{options[:text]}' 
            data-related='#{options[:related]}' data-count='#{options[:count]}' data-lang='#{options[:lang]}' 
            data-counturl='#{options[:counturl]}' data-hashtags='#{options[:hashtags]}' data-size='#{options[:size]}' data-dnt='#{options[:dnt]}'
            href='http://twitter.com/share'>
          <script src='http://platform.twitter.com/widgets.js' type='text/javascript'></script>
          </a>
        eos
      )
    end
    
    def googleplus_button(options = {})
      raw(
        <<-eos
          <script src='https://apis.google.com/js/plusone.js' type='text/javascript'></script>
          <div class='g-plusone gplusshare' data-href='http://fidrelity.at' data-size='#{options[:size]}' 
            data-annotation='#{options[:annotation]}' data-width='#{options[:width]}' data-align='#{options[:align]}'
            data-expandTo='#{options[:expand_to]}' data-callback='#{options[:callback]}' 
            data-onstartinteraction='#{options[:on_start_interaction]}' data-onendinteraction='#{options[:on_end_interaction]}'></div>
        eos
      )
    end 
  end
end