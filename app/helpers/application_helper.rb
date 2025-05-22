module ApplicationHelper
  def locale_lang(locale)
    locale == :en ? "Inglês" : "Portguês do Brasil"
  end


  def main_app_title
    "Crypto Wallet"
  end

  def rails_environment
    if Rails.env.development?
     "desenvolvimento"
    else
     "producao"
    end
  end
end
