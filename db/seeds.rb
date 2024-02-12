# frozen_string_literal: true

puts "\n== Seeding the database with fixtures =="
system('bin/rails db:fixtures:load')
