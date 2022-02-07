class ResultMailerPreview < ActionMailer::Preview
	def new_result_email
    # Set up a temporary order for the preview
    result = Result.new(result_params)

    ResultMailer.with(resukt: result).new_result_email
  end
end