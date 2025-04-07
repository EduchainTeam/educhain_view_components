# frozen_string_literal: true

class Educhain::Navigation::Account::Component < Educhain::BaseComponent
  def initialize(user_label:, account_path:, logout_path:, logout_method:)
    @user_label = user_label
    @account_path = account_path
    @logout_path = logout_path
    @logout_method = logout_method
  end
end
