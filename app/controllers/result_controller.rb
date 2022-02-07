class ResultMailerController < ApplicationController
	def create
    @result = Result.new(order_params)

    if @order.save
      ResultMailer.with(result: @result).new_result_email.deliver_later

      flash[:success] = "your Result is Successfully Created!"
      redirect_to root_path
    else
      flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
      render :new
    end
  end
end