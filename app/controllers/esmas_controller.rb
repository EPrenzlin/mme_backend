class EsmasController < ApplicationController

    def index 
    esma = Esma.all 
    render json:esma 
    end

end
