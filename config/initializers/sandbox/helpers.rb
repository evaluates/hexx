# Path to the temporary `tmp/sandbox` folder
#
# @return [String]
def sandbox
  @sandbox ||= File.expand_path "tmp/sandbox"
end

# Clears the sandbox
#
# @return [undefined]
def clear_sandbox
  FileUtils.rm_rf sandbox
end

# Re-creates the sandbox
#
# @return [undefined]
def prepare_sandbox
  clear_sandbox
  FileUtils.mkdir_p sandbox
end

# Runs code in a sandbox
#
# @return [undefined]
def try_in_sandbox
  FileUtils.cd(sandbox) { yield }
end

# Reads file in sandbox and returns its content
#
# @return [String]
# @return [""]
#   when the file is absent
def read_in_sandbox(filename)
  file = Dir[File.join(sandbox, filename)].first
  file ? File.read(file) : ""
end
