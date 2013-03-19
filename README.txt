#This doesnt actually load the sicp lang properly
Run tmux, split pane
Run ./sicp.rkt in one pane
Use C-c to send commands to the repl from vim
Use default, :0.1 to choose the right pane as the target

#To be strict SICP lang style, you just need to run
racket <filename>.rkt

(assuming the file actually has #lang planet neil/sicp at the top)
