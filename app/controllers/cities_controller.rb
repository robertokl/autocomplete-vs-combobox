class CitiesController < ApplicationController
  def index
    conditions = (params[:q] ? {:conditions => ["name like ?", "#{params[:q]}%"]} : {})
    @cities = City.all(conditions.merge(:order => "name"))
    respond_to do |format|
      format.html
      format.xml do
        render :xml => @cities.to_xml
      end
      format.csv do
        render :text => @cities.map {|c| "#{c.name}|#{c.id}"}.join("\n")
      end
    end
  end

  def create
    combo_city = City.find(params[:combo_cities]).name
    city_by_name = City.find_by_name(params[:auto_cities_name]).name
    city_with_id = City.find(params[:auto_cities_id]).name

    render :text => "Combo city: #{combo_city}<br />Autocomplete by name: #{city_by_name}<br />Autocomplete by id: #{city_with_id}"
  end
end
