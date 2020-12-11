class ExemptionsController < ApplicationController
    
    def index 
    exemptions = Exemption.all 
    render json: exemptions
    end
    
    
    def create 
    exemption = Exemption.new(name:params[:name], isin:params[:isin], stock_market:params[:stock_market])
    if exemption.valid?
        exemption.save
        render json:exemption
    end 
    end 

    def show 
    exemption = Exemption.find_by(id:params[:id])
    render json:exemption
    end

    def destroy 
    exemption = Exemption.find_by(id: params[:id])
    exemption.destroy 
    end
    
    end
    