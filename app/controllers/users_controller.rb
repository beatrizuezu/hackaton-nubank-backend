class UsersController < ApplicationController

    def logged_user
        if current_user
            render json: current_user, status: 200
        else
            render json: {
                data: {
                    errors: ["Usuário não logado"],                }
            }, status: 400
        end
    end

    def skills
        if params 
            @user = User.find(params[:user_id])
            render json: {
                data: {
                    skills: @user.skills
                }
            }, status: 200
        end
    end

end
