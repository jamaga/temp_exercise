class CommentMailer < ActionMailer::Base
  default from: "agnieszka.tys@gmail.com"

  def welcome_email(comment)
    @comment = comment
    @post = comment.post
    @user = @post.user
    mail(to: @user.email, subject: 'Welcome to My Site')
  end
end
