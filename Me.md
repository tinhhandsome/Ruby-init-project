## this is init how to add gemfile
To get a good start, you can use the bundle gem command and rspec --init.

~/code $ bundle gem my_lib
      create  my_lib/Gemfile
      create  my_lib/Rakefile
      create  my_lib/LICENSE.txt
      create  my_lib/README.md
      create  my_lib/.gitignore
      create  my_lib/my_lib.gemspec
      create  my_lib/lib/my_lib.rb
      create  my_lib/lib/my_lib/version.rb
Initializating git repo in /Users/john/code/my_lib
~/code $ cd my_lib/
~/code/my_lib $ git commit -m "Empty project"
~/code/my_lib $ rspec --init
The --configure option no longer needs any arguments, so true was ignored.
  create   spec/spec_helper.rb
  create   .rspec