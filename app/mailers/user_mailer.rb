class UserMailer < ActionMailer::Base
  default from: "hath@example.com"
  def send_incoming_comment(user,comment)
    @user = user
    @comment = comment
    mail(to: @user.email,
         subject: "Incoming comment")
         #body: "#{@comment.commenter} comments #{@comment.body}")
  end
end
