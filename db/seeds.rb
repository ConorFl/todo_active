require 'active_record'
require 'faker'
require_relative '../app/models/task'


ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/todo_active.db")
attribute_hash = {}
100.times do |task|
  attribute_hash[:description] = Faker::Lorem.sentence(3)
  attribute_hash[:status] = :incomplete
  Task.create!(attribute_hash) 
end
