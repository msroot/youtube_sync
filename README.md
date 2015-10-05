# YoutubeSync

Download your youtube videos from a text file list

## Usage
default `directory` is `~/Desktop/Youtube`
default `file` `~/Desktop/Youtube/links.txt`

So if you have a directory and the file you can just use it with out arguments

    $ youtube_sync	

To use a different file and folder 

    $ youtube_sync -d /Users/Ioannis/Downloads -f list.txt

where `-d` is the directory you want to save videos and `-f` the file to load

> `NOTE` File must be in the same directory

## The list file
Each url should be in a new line
You can comment the line with `#` if you want to skip it


## Help

    $ youtube_sync help
or 

    $ youtube_sync help perform
 
You will get:
 
    Options:
      -d, [--dir=DIR]    # Directory to store videos
                         # Default: ~/Desktop/Youtube
      -f, [--file=FILE]  # File to load urls
                         # Default: ~/Desktop/Youtube/links.txt

    Description:
      Passing a `-d` for a directory and `-f` for the file
    
      example:
    
      > $ youtube_sync -d /Users/Ioannis/Downloads -f list.txt
## Help

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'youtube_sync'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youtube_sync


## Contributing

1. Fork it ( https://github.com/msroot/youtube_sync/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

##License

Copyright (c) 2015 Ioannis Kolovos

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
