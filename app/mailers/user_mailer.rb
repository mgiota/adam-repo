class UserMailer < ApplicationMailer
  
    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'your-email@example.com',
           subject: "A new contact form message from #{name}")
    end

    def welcome(user)
      @appname = "Broke Bike Mountain"
      mail(to: user.email,
           subject: "Welcome to #{@appname}!")
    end

    def thank_you
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        UserMailer.contact_form(@email, @name, @message).deliver_now
    end

    def order_placed(user, product)
      @user = user
      @product = product
      mail(to: user.email,
        from: email,
        subject: "Thank you for your money sucka!")
    end
      
  end