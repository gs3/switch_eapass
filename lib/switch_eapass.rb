require "switch_eapass/version"
require 'mechanize'
require 'pit'

module SwitchEapass
  class EAmusement < Mechanize
    def switch_reference(switch_card_number)
      login
      get 'http://p.eagate.573.jp/gate/p/eamusement/change/index.html'

      reffered_card_number =
        page.search('//td[@class="card_info"][1]').inner_text[0..15]

      if reffered_card_number != switch_card_number
        # switch reference
        page.links_with(class: "detach_btn").each do |link|
          click(link) if link.href.include?(switch_card_number)
        end
      else
        puts 'Already reffered.'
        false
      end
    end

    private
    def login
      get 'https://p.eagate.573.jp/gate/p/login.html'
      page.encoding = 'utf-8'

      ENV['EDITOR'] ||= 'vim'
      config = Pit.get('p.eagate.573.jp', require: {
        "konami_id" => "Your KONAMI ID",
        "password"  => "Your password",
      })

      login_form = page.form_with(action: '/gate/p/login.html')
      login_form.KID  = config['konami_id']
      login_form.pass = config['password']

      submit login_form
    end
  end
end
