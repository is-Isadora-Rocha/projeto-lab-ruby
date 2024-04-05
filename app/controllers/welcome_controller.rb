class WelcomeController < ApplicationController

  def index
    @var_controller_index = "Oi, eu sou uma variável declarada no controller 
    -> welcome_controller.rb <- e instanciada com @var_controller_index no welcome.html.erb nas views
    para que eu possa aparecer aqui para você no navegador."
  end
end
