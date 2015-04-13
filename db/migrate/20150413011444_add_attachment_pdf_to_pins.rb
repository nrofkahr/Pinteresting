class AddAttachmentPdfToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :pins, :pdf
  end
end
