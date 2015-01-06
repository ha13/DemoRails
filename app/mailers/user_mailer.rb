class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def send_incoming_comment(user,comment)
    @user = user
    @comment = comment
    mail(to: @user.email,
         subject: "incoming comment",
         body: "#{@comment.commenter} comments #{@comment.body}")
  end
end
