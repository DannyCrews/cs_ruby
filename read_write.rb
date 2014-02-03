class FileReader

  def initialize(file_name)
    @file = File.open(file_name, "r")
  end

  def read_file
    whole_file = ""
    while (input_line = @file.gets)
      whole_file += input_line
    end
    return whole_file
  end

  def display
    puts "Contents of input file:"
    puts read_file
  end

  def close
    @file.close()
  end
end

class FileWriter

  def initialize(file_name)
    @file = File.open(file_name, "w")
  end

  def write_line(output_line)
    @file.puts(output_line)
  end

  def close
    @file.close()
  end
end

# example
require_relative "file_reader.rb"
require_relative "file_writer.rb"

fr = FileReader.new("input.txt")
fw = FileWriter.new("output.txt")

input = fr.read_file()
fw.write_line(input)

fw.close()
fr.close()