class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end

    f = File.read(File.expand_path(File.dirname(__FILE__) + "/../municipios.csv"))
    f.split(";").each do |m|
      City.create!(:name => m)
    end
  end

  def self.down
    drop_table :cities
  end
end
