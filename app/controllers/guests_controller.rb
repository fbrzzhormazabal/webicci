class GuestsController < ApplicationController
    before_action :find_guest, except: [:new,:create,:index]

    def index
        @guests = Guest.all
    end
    
    def new
        @guest = Guest.new        
    end

    def create
        @guest = Guest.create(Name: params[:guest][:Name],Email: params[:guest][:Email],Run: params[:guest][:Run],Dv: params[:guest][:Dv],Password: params[:guest][:Password])
        redirect_to root_path
    end

    def show
    end

    def edit
    end

    def update      
        @guest.update(Name: params[:guest][:Name],Email: params[:guest][:Email],Run: params[:guest][:Run],Dv: params[:guest][:Dv],Password: params[:guest][:Password])
        
        redirect_to @guest
    end

    def destroy
        @guest.destroy

        redirect_to root_path
    end

    def find_guest
        @guest = Guest.find(params[:id])
    end
end
