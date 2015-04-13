class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :document, styles: {
      thumb: { geometry: "150x150", format: "jpg" }
    }, processors: [:ghostscript]
  validates_attachment_content_type :document, :content_type => ['application/pdf', 'application/msword', 'text/plain']
end
