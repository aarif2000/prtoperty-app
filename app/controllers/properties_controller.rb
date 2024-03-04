class PropertiesController < ApplicationController
    def index
        @properties = Property.find_each
    end

    def new
        @property = Property.new
    end

    def create 
        @property = Property.create(property_params)
    end

    def show 
        @property = Property.find(params[:id])
    end

    private

    def property_params
        params.require(:property).permit(:title, :description, :price, :location)
    end
end
