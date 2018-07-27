class DefectDetail < ApplicationRecord
	include ImageUtil
	#before_validation :parse_image
	#before_post_process :rename_picture
	#attr_accessor :image_base

	has_attached_file :picture, 
						styles: { medium: "300x300#", thumb: "100x100>" },
						default_url: "/images/:style/missing.png",
						convert_options: CONVERT_OPTIONS
	validates_attachment :picture, presence: true
	do_not_validate_attachment_file_type :picture

	#before_save Proc.new{set_image_extension(:picture)}, if: :picture_file_name?

	#def add_picture(picture_64, picture_name)
	#    picture_data = Paperclip.io_adapters.for(picture_64)
	#    picture_data.original_filename = picture_name
	#    self.picture = picture_data
	#end

	private

	def rename_picture
		#avatar_file_name - important is the first word - avatar - depends on your column in DB table
		extension = File.extname(picture_file_name).downcase
		self.picture.instance_write :file_name, "#{Time.now.to_i.to_s}#{extension}"
	end

	def parse_image
	  	image = Paperclip.io_adapters.for(image_base)
	  	image.original_filename = "file.jpg"
	  	self.picture = image
	end
end
