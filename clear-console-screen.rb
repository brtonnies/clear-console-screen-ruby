## ------------ Clear Screen ---------------
lambda {
  original_echo = $stdout.method(:echo?)
  $stdout.send(:define_singleton_method, :echo?) {
    send :define_singleton_method, :echo?, &original_echo
    false
  }
  print "\e[2J\e[H \e[D"
}.call
## -----------------------------------------