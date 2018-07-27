module ImageUtil

  CONVERT_OPTIONS = { thumb: '-quality 90 -strip -interlace plane', medium: '-quality 90 -strip -interlace plane'}

  def set_image_extension(attr)
    if self.send("#{attr}_file_name_changed?")
      self["#{attr}_file_name"] = self["#{attr}_file_name"] + '.' + self["#{attr}_content_type"].split('/').last
    end
  end
end