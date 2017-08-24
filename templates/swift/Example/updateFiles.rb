require "open-uri"

Dir.chdir("..")

File.open('version.sh', 'w') do |fo|
  fo.write open("https://raw.githubusercontent.com/mediafly/ios-template-files/master/version.sh").read 
end
command = "chmod 755 version.sh"
system(command)

File.open('.gitignore', 'w') do |fo|
  fo.write open("https://raw.githubusercontent.com/mediafly/ios-template-files/master/.gitignore").read 
end

File.open('.swiftlint', 'w') do |fo|
  fo.write open("https://raw.githubusercontent.com/mediafly/ios-template-files/master/.swiftlint").read 
end
