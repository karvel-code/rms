class SysAdminsController < ApplicationController
    
    def index
    end

    def new
        @sys_admin = SysAdmin.new
    end

    def create
        @sys_admin = SysAdmin.new(sys_admin_params)
        # debugger
        if @sys_admin.save
            reset_session
            log_in @sys_admin
            redirect_to @sys_admin
        else
            render 'new', status: :unprocessable_entity
        end
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
        log_out
        redirect_to login
    end

    private
    def sys_admin_params
        params.require(:sys_admin).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
