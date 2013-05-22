require 'mysql2'
require 'etc'
require 'yaml'

class MysqlChecker
  attr_accessor :con
  attr_reader :cnf

  def initialize
	@cnf = nil
	@con = nil
  end
  
  def load_config
        @cnf = YAML::load_file("#{Etc.getpwuid.dir}/.mysql_checker.yml")
  end
 
  def setup_connection
	@con = Mysql2::Client.new(@cnf["db_instance"])
  end

  def test
    begin
        rs = con.query "SELECT VERSION()"
        headers = rs.fields
        rs.each(:as => :array) do |row|
            puts headers + row
        end
    
    rescue Mysql2::Error => e
        puts e.errno
        puts e.error
    
    ensure
        con.close if con
    end
  end
end
