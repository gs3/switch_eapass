require 'switch_eapass'
require 'switch_eapass/eamusement'
require 'thor'

module SwitchEapass
  class CLI < Thor
    desc "switch <e-Pass ID>", "switch referring e-Amusement pass"
    def switch(card_number)
      ea = EAmusement.new
      ea.switch_reference(card_number)
    end
  end
end
