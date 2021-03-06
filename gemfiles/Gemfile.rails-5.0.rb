source 'https://rubygems.org'

gemspec path: '../'

gem 'activerecord', '~> 5.0.0.beta2'
gem 'railties', '~> 5.0.0.beta2'
gem 'i18n', '~> 0.7.0'

# Database Configuration
group :development, :test do
  platforms :jruby do
    gem 'activerecord-jdbcmysql-adapter', '~> 1.3.14'
    gem 'activerecord-jdbcpostgresql-adapter', '~> 1.3.14'
    gem 'kramdown'
  end

  platforms :ruby, :rbx do
    gem 'sqlite3'
    gem 'mysql2'
    gem 'pg'
    gem 'redcarpet'
  end

  platforms :rbx do
    gem 'rubysl', '~> 2.0'
    gem 'rubinius-developer_tools'
  end
end
