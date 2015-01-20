# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Settings.create({
  page_title:           'Exploring the web, one link at a time',
  time_zone:            'Pacific Time (US & Canada)',
  default_private_link: false
})
