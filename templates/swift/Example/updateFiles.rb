require "open-uri"

Dir.chdir("..")

def updateFile(url, file)
  begin
    content = open(url).read
    File.open(file, 'w') do |fo|
      fo.write content
    end
    if file.end_with?(".sh") == true
      command = "chmod 755 #{file}"
      system(command)
    end
  rescue Exception => ex
    puts ex
  end
end

[".swiftlint.yml", ".gitignore", "version.sh"].each do |f| 
  updateFile("https://raw.githubusercontent.com/mediafly/ios-template-files/master/#{f}", f)
end
