10.times { puts "This is just Ruby code" }

user "tdi" do
  comment "Test Driven Infrastructure"
  username "tdi"
  shell "/usr/bin/zsh"
  home "/home/tdi"
  supports :manage_home => true
  action :create
end

template '/home/tdi/.tdi' do
  action :create
  source 'bogus'
end
