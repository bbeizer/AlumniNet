class MessagesController < ApplicationController
    before_action :set_conversation

    def create
      receipt = current_user.reply_to_conversation(@conversation, params[:body])
      redirect_to conversation_path(receipt.conversation)
      params.require(:message).permit(:title, :content)
      redirect_to message
    end
    
    private

    def set_conversation
      @conversation = current_user.mailbox.conversation.find(params[:conversation_id])
    end
end
