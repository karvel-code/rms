class SysAdminsController < ApplicationController
    
    def index
    end

    def new
        @sysadmin = SysAdmin.new
    end

    def create
    end

    def show
        @sys_admin = SysAdmin.find(params[:id])
        # debugger
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
