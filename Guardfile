# encoding: utf-8

guard :rspec, cmd: "bundle exec rspec spec" do

  watch("lib/hexx.rb") { "spec" }

  watch("bin/hexx") { "spec/tests/bin/hexx_spec.rb" }

  watch(%r{^lib/hexx/(\w+)\.rb$}) do |m|
    "spec/tests/lib/#{ m[1] }_spec.rb"
  end

  watch("spec/tests/**/*_spec.rb")

  watch("spec/fixtures/**/*") { "spec" }

  watch("spec/spec_helper.rb") { "spec" }
end
