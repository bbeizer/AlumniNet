### Conversations

In AlumniNet, conversations enable you to directly reach out to a specific individual (as opposed to creating a public forum post).

Students can create conversations with any alumni, and any alumni can create a conversation with any student.  

Shown below is our code for the conversation controller:

```
class ConversationsController < ApplicationController
  
    def index
      @conversations = current_user.mailbox.conversations
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
```
