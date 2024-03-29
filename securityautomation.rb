# security_automation_tool.rb

require 'digest'

def calculate_hash(file_path)
  content = File.read(file_path)
  Digest::SHA256.hexdigest(content)
end

def check_file_integrity(file_path, expected_hash)
  actual_hash = calculate_hash(file_path)
  
  if actual_hash == expected_hash
    puts "File integrity check passed for #{file_path}."
    return true
  else
    puts "File integrity check failed for #{file_path}."
    return false
  end
end

# Example: Check integrity of /etc/passwd file
check_file_integrity('/etc/passwd', 
'expected_hash_value')

