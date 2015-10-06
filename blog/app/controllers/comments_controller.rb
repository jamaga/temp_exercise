class CommentsController < ApplicationController

  #utworzylismy komentarze zalezne od postow , tylko akcje create
  #resource - nie stworzyl zawartosci plikow
  #metoda create znajduje nam aktualny post - lin 9
  #i tworzy komentarz do tego posta (z kluczem obcym)
  #jak jest blogs_to to zWSZE JEST KLUCZ OBCY
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    CommentMailer.welcome_email(@comment).deliver
    #redirect_to @post
    redirect_to post_path(@post.id)
  end
end
