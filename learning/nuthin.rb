class LogLineParser
  def initialize(line)
    @line = line
  end
  def message
    #raise 'Please implement the LogLineParser#message method'
    return @line.split(':').last.strip
  end

  def log_level
    #raise 'Please implement the LogLineParser#log_level method'
    the_info = @line.split(':').first.gsub("[","").gsub("]","").downcase
    return the_info
  end

  def reformat
    #raise 'Please implement the LogLineParser#reformat method'
    # the_info = @line.split(':').first.gsub("[","(").gsub("]",")").downcase
     return "#{self.message} (#{self.log_level})"
  end
end

#you =  LogLineParser.new('[ERROR]: Invalid operation').message
#pp you
# => "Invalid operation"
#me = LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"
#pp me
her = LogLineParser.new('[ERROR]: Invalid operation').log_level
# => "error"
pp her
him = LogLineParser.new('[INFO]: Operation completed').reformat
# => "Operation completed (info)"
pp him
