class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      render json: { message: "User has been created" }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :internal_server_error
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :cpf, :email, order_attributes: [:price, :device, :imei, :installment])
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end
end



