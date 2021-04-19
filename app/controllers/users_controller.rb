class UsersController < ApplicationController
    before_action :authenticate, only: [:me]

    def signup 
        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }, status: :created
        else 
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def me
        render json: @current_user
    end


    def login 
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def update
        @user = User.find_by(params[:id])
        @user.update(user_params)
        if @user 
            render json: @user
        else 
            render json: false
        end
    end


 

    private 

    def user_params
        params.permit(:name, :password)
    end 

end
