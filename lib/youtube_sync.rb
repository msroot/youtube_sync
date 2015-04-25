require "youtube_sync/version"
require 'viddl-rb'
require "thor"
require 'yaml'

module YoutubeSync 
  class CLI  < Thor   
    
    default_task :perform
    desc "perform", "Download all links"
    
    long_desc <<-LONGDESC
    Passing a `-d` for a directory and `-f` for the file \n

    example:\n
    > $ youtube_sync -d /Users/Ioannis/Downloads -f list.txt\n
    
    NOTE: file must be in the same directory
      LONGDESC
      
    method_option :dir, 
    :aliases => "-d", 
    :desc => "Directory to store videos",
    :default => File.join(ENV['HOME'], "Desktop", "Youtube")
    
    method_option :file, 
    :aliases => "-f", 
    :desc => "File to load urls",
    :default =>   File.join(ENV['HOME'], "Desktop", "Youtube", "links.txt") 
      
    def perform
      dir, file  = options[:dir], options[:file]
      
      [dir, file].each  do |required|
        say "#{required} not exist", :red and return unless File.exist?(required)
      end
      
      open(file, 'r').each_line do |video|
        video.strip!
        
        if video.start_with? '#'
          say "Skipping  #{video}", :yellow
          next 
        end
        
        say "Downloading: #{video}", :green
        
        `cd #{dir} && viddl-rb -a #{video}`
      end  
      say "Done!", :green
    end

  end
end
