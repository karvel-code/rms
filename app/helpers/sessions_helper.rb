module SessionsHelper
    def log_in(sys_admin)
        session[:sys_admin_id] = sys_admin.id
    end
end
