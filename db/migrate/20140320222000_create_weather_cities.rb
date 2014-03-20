class CreateWeatherCities < ActiveRecord::Migration
  def change
    create_table :weather_cities do |t|
      t.string :name
      t.string :temperature

      t.timestamps
    end
  end
end
