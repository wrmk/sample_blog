class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? # выполнить функцию такую то ДО выполнения контроллера, если функция вызывается для devise

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username #добавили запрос на указание имя пользователя при логине
  end
end