module ApplicationHelper
  def set_date_ptbr(us_date)
    us_date.strftime("%d/%m/%Y")
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
