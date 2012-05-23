# so_social gem for Rails 3

This gem adds helper methods to your views to easily add sharing functionality.
so_social currently supports:
* Facebook - Like Button
* Twitter - Tweet Button
* Google+ - +1 Button

To add a button to your view, use one of these methods:

* `facebook_button`
* `twitter_button`
* `googleplus_button`

## Facebook Parameters

You can set all the attributes the Facebook Like Button supports via optional parameters.
According to the [Facebook Documentation][fb] these attributes are:

* href - the URL to like. The XFBML version defaults to the current page.
* send - specifies whether to include a Send button with the Like button. This only works with the XFBML version.
* layout - there are three options.
  * standard - displays social text to the right of the button and friends' profile photos below. Minimum width: 225 pixels. Minimum increases by 40px if action is 'recommend' by and increases by 60px if send is 'true'. Default width: 450 pixels. Height: 35 pixels (without photos) or 80 pixels (with photos).
  * button_count - displays the total number of likes to the right of the button. Minimum width: 90 pixels. Default width: 90 pixels. Height: 20 pixels.
  * box_count - displays the total number of likes above the button. Minimum width: 55 pixels. Default width: 55 pixels. Height: 65 pixels.
* show_faces - specifies whether to display profile photos below the button (standard layout only)
* width - the width of the Like button.
* action - the verb to display on the button. Options: 'like', 'recommend'
* font - the font to display in the button. Options: 'arial', 'lucida grande', 'segoe ui', 'tahoma', 'trebuchet ms', 'verdana'
* colorscheme - the color scheme for the like button. Options: 'light', 'dark'
* ref - a label for tracking referrals; must be less than 50 characters and can contain alphanumeric characters and some punctuation (currently +/=-.:_). The ref attribute causes two parameters to be added to the referrer URL when a user clicks a link from a stream story about a Like action:
* fb_ref - the ref parameter
* fb_source - the stream type ('home', 'profile', 'search', 'ticker', 'tickerdialog' or 'other') in which the click occurred and the story type ('oneline' or 'multiline'), concatenated with an underscore.


### Example Usage

```
#erb
<%= facebook_button(:layout => 'box_count', :action => 'recommend',  :send => true, :width => 100)  %>
```

## Twitter Parameters

[Twitter supports][twitter] the following attributes:

* url	- URL of the page to share
* via - Screen name of the user to attribute the Tweet to
* text - Default Tweet text
* related	- Related accounts
* count	- Count box position
* lang - The language for the Tweet Button
* counturl - URL to which your shared URL resolves
* hashtags - Comma separated hashtags appended to tweet text
* size - The size of the rendered button
* dnt - [See this section for information][twinfo]

### Example Usage

```
#erb
<%= twitter_button(:url => 'http://fidrelity.at', :text => 'hello world', :via => 'fidrelity', :lang => 'de') %>
```

## Google+ Parameters
The Google +1 button supports the following attributes (for detailed documentation see [this][gplus]):

* href - defaults to current page URL
* size - Sets the button size to render. Default: `standard`
  * small
  * medium
  * standard
  * tall
* annotation - Sets the annotation to display next to the button.
  * none: Do not render any additional annotations.
  * bubble: Display the number of users who have +1'd the page in a graphic next to the button.
  * inline: Display profile pictures of connected users who have +1'd the page and a count of users who have +1'd the page.
* width - If annotation is set to `inline`, sets the width in pixels to use for the button and its inline annotation. If width is omitted, a button and its inline annotation use 450px.
* align - Sets the horizontal alignment of the button assets within its frame.
  * left
  * right
* expandTo - Sets the preferred positions in which to display hover and confirmation bubbles, relative to the button.
  * top
  * right
  * bottom
  * left
* callback - If specified, this function is called after the user clicks the +1 button.
* onstartinteraction - If specified, this function is called either when a hover bubble displays (caused by the user hovering the mouse over the +1 button) or when a confirmation bubble displays (caused by the user +1'ing the page). 
* onendinteraction - If specified, this function is called when either a hover or confirmation bubble disappears.

### Example Usage

```
#erb
<%= googleplus_button(:size => 'tall', :annotation => 'bubble', :expand_to => 'top', :on_start_interaction => 'my_callback') %>
```


[fb]: https://developers.facebook.com/docs/reference/plugins/like/
[twitter]: https://dev.twitter.com/docs/tweet-button
[twinfo]: https://dev.twitter.com/docs/tweet-button#optout
[gplus]: https://developers.google.com/+/plugins/+1button/




