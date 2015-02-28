# encoding: utf-8

# Re-creates tmp/sandbox before specs with :sandbox tag
# Defines specific helpers and matchers for the specifications
RSpec.configure do |config|

  config.before :each, :sandbox do
    require_relative "sandbox/helpers"
    require_relative "sandbox/matchers"
    prepare_sandbox
  end

  config.after :each, :sandbox do
    clear_sandbox
  end
end
