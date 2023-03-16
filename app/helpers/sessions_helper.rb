module SessionsHelper
    #Logs in a given user
    def log_in(sys_admin)
        session[:sys_admin_id] = sys_admin.id
    end

    #Returns a logged in admin
    def current_sys_admin
        if session[:sys_admin_id]
            @current_sys_admin ||= SysAdmin.find_by(id: session[:sys_admin_id])
        end
    end
end
