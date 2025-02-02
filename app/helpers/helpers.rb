# frozen_string_literal: true

class Helpers
  def self.current_user(session)
    User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(session)
    current_user(session).present?
  end
end
