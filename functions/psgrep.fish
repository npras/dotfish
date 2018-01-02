function psgrep --description 'find a process id by process name'
  echo 'cmd: ps -ef | grep -i '
  ps -ef | grep -i $argv[1]
end
