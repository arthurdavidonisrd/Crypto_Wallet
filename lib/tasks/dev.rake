namespace :dev do
  desc "Populate database development environment"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Executing tasks")
      spinner.auto_spin
      %x(rails db:drop db:create db:migrate db:seed)
      spinner.success("\nDone successful!")
    else
      puts "Voce nao esta em ambiente de desenvolvimento"
    end
  end
end
