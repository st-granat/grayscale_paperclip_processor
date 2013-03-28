grayscale_paperclip_processor
=============================

Grayscale processor for Paperclip gem

Usage:

Gemfile:

    gem "grayscale_paperclip_processor"

Model:

    has_attached_file :data,
      :processors => [:watermark],
      :styles => {
        :grayscale => {
          :processors => [:grayscale],
          :geometry => "361x226!"
        }
        :normal => "361x226#",
        ...
