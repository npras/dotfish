# prasanna's fish shell config

switch (uname)
case Darwin
  set --export EDITOR mvim
case Linux
  set --export EDITOR gvim
case '*'
  set --export EDITOR vim
end

# no welcome message
set fish_greeting
