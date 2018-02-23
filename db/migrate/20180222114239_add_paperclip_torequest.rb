class AddPaperclipTorequest < ActiveRecord::Migration[5.1]
  def change
	add_attachment :requests, :image
  end
end
