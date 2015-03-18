class AddTimeZoneToUsers < ActiveRecord::Migration
  def self.up
    add_column :appointments, :time_zone, :string
  end

  def self.down
    remove_column :appointments, :time_zone
  end
end
