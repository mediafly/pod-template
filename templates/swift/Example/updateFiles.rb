require "open-uri"

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

["updateFiles.rb"].each do |f| 
  updateFile("https://raw.githubusercontent.com/mediafly/ios-template-files/master/#{f}", f)
end

Dir.chdir("..")

[".swiftlint.yml", ".gitignore", "version.sh"].each do |f| 
  updateFile("https://raw.githubusercontent.com/mediafly/ios-template-files/master/#{f}", f)
end

Dir.chdir(".git/hooks/")

["prepare-commit-msg"].each do |f| 
  updateFile("https://raw.githubusercontent.com/mediafly/ios-template-files/master/#{f}", f)
end
