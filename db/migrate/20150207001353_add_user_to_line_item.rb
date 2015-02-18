class AddUserToLineItem < ActiveRecord::Migration
  def change
    add_reference :line_items, :user, index: true
  end
end
