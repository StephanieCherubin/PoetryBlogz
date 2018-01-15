class RepliesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  def create
    @poem = Poem.find(params[:poem_id])
    @reply = @poem.replies.create(reply_params)
    redirect_to poem_path(@poem)
  end

  def destroy
    @poem = Poem.find(params[:poem_id])
    @reply = @poem.replies.find(params[:id])
    @reply.destroy
    redirect_to poem_path
  end

  private
    def reply_params
      params.require(:reply).permit(:commenter, :body)
    end
end
