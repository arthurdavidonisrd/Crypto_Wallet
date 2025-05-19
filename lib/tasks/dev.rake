namespace :dev do
  desc "Populate database development environment"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end
end
