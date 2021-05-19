class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def twitter
        @user = User.from_omniauth(request.env["omniauth.auth"])
        puts "---------------------------"
        puts "TWEETING"
        puts "---------------------------"
        
        if @user.persisted?
            sign_in_and_redirect @user, event: :authentication
            set_flash_message(:notice, :success, kind: "Twitter") if is_navigational_format?
        else
            session["devise.twitter_data"] = request.env["omniauth.auth"].except("extra")
            redirect_to new_user_registration_url
        end
    end
    
    def failure
        puts "---------------------------"
        puts "TWEETING FAILED"
        puts "---------------------------"
        redirect_to root_path
    end
end