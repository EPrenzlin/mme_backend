class ExemptionsController < ApplicationController
    
    def index 
    exemptions = Exemption.all 
    render json: exemptions
    end
    
    
    def create 
    exemption = Exemption.new(name:params[:name], isin:params[:isin], stock_market:params[:stock_market])
    if exemption.valid? && validator(exemption) 
        exemption.save
        render json:exemption
    else 
        errors = exemption.errors.messages 
        render json:errors
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
    
    private 
    def validator(new_exemption)
        if !Esma.all.find_by(isin:new_exemption.isin) 
        return true 
        else
        false 
        end
    end

    end
    