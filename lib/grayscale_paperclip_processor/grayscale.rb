# coding: utf-8
module Paperclip
  class Grayscale < Processor
    def initialize file, options = {}, attachment = nil
      super
      @file           = file
      @geometry       = options[:geometry]
      @current_format = File.extname(@file.path)
      @basename       = File.basename(@file.path, @current_format)
    end

    def make
      dst = Tempfile.new(@basename)
      dst.binmode
      command = "#{File.expand_path(@file.path)} -resize #{@geometry} -colorspace Gray #{File.expand_path(dst.path)}"
      begin
        success = Paperclip.run("convert", command)
      rescue PaperclipCommandLineError
        raise PaperclipError, "There was an error converting the image to grayscale for #{@basename}"
      end
      dst
    end
  end
end
