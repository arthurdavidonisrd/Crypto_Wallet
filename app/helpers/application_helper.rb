module ApplicationHelper
  def rails_environment
    Rails.env
  end

  def locale_lang(locale)
    case locale.to_s
    when "pt-BR" then "Portugu\u00EAs (Brasil)"
    when "en"    then "Ingl\u00EAs"
    when "es"    then "Espanhol"
    else "Desconhecido (#{locale})"
    end
  end

  def main_app_title
    "Minha Aplicação"
  end
end
