class ConversationsController < ApplicationController
  
    def index
      @conversations = current_user.mailbox.conversations
     # @recipients = Array.new
      #for c in @conversations do  
      #c.receipts_for(current_user).each do |receipt|
        #if receipt.message.sender.name != current_user.name
          #@recipients.push(receipt.message.sender.name)
          #break
        #end
      #end
    #end
    end

    def show
      @conversation = current_user.mailbox.conversations.find(params[:id])
    end

    def new
       if current_user.gradyear.to_i > 2021
      @recipients = User.where("gradyear < ?", "2022") -[current_user]
      else
      @recipients = User.where("gradyear > ?", "2021") - [current_user]
      end 
    end

    def create
      recipient = User.find(params[:user_id])
      receipt = current_user.send_message(recipient, params[:body], params[:subject])
      redirect_to conversation_path(receipt.conversation)
    end


end
