# frozen_string_literal: true

class Educhain::Navigation::Account::Component < Educhain::BaseComponent
  def initialize(
    user_icon: "user-smile-fill",
    logout_icon: "logout-box-line",
    user_label: "my@account.dev",
    account_path: "#",
    logout_path: "#",
    logout_method: :delete)
    @logout_icon = logout_icon
    @user_icon = user_icon
    @user_label = user_label
    @account_path = account_path
    @logout_path = logout_path
    @logout_method = logout_method
  end
end
