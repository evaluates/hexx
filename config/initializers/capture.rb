# encoding: utf-8

# Captures and returns the results of capturing $stdout
def capture_stdout
  begin
    $stdout = StringIO.new
    yield
  ensure
    result, $stdout = $stdout.string, STDOUT
  end
  result
end

# Captures stdout of specifications with :capture tag
RSpec.configure do |config|
  config.around :each, :capture do |example|
    capture_stdout { example.run }
  end
end
