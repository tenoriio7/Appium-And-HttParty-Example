# pegar o caminho do helper

require_relative '../helpers/viewHelper'

class CarroselMaximizado < ViewHelper
    def initialize
      # ---------------------- elementos da tela ----------------------
      @ver_mas = {:android => 'component_card_item_see_more_less_label', :ios => 'card_item_see_more_less_label'} 
      @disponible_avances = {:android => 'component_card_expanded_avances_label', :ios => 'disponible avances'}
      @cupo_disponible = {:android => 'component_card_limit_available_label', :ios => 'card_limit_available_label'}
    end
    attr_accessor :ver_mas,:disponible_avances,:cupo_disponible
end