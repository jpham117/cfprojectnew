# The connection.rb file is used to run any sort of code before the connection between the user and the server is established. 
# Ex: Useful for authentication - authenticate users who are able to connect to the ActionCable server.

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
       self.current_user = find_verified_user
    end

    def disconnect

    end

    protected

    def find_verified_user
      if verified_user = request.env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end

  end
end