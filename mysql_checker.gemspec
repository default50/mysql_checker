Gem::Specification.new do |s|
  s.name        = 'mysql_checker'
  s.version     = '0.0.1.pre'
  s.date        = '2013-05-22'
  s.summary     = "MySQL client which does active test on a DB (mimicking use cases) to find out errors"
  s.description = "Do some work on a MySQL DB to find possible errors"
  s.authors     = ["Sebastian Cruz"]
  s.email       = 'default50@gmail.com'
  s.executables << 'mysql_checker'
  s.files       = ["lib/mysql_checker.rb"]
  s.homepage    =
    'http://rubygems.org/gems/mysql_checker'
  s.add_runtime_dependency "mysql2",
    ["= 0.3.11"]
end
