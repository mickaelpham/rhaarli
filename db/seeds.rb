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

Link.create([
  {
    url:         'https://www.google.com',
    title:       'Google',
    description: 'This is a public link.',
    is_private:  false
  },
  {
    url:         'http://mickael.io',
    title:       'My personal blog',
    description: 'This is a private link',
    is_private:  true
  }
])
