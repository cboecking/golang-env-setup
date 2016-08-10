#Command Line

* tmux ---> start tmux
* tmux new -s session_name ---> start tmux with session name
* tmux ls ---> list tmux sessions
* tmux a # session_number ---> attach to session number
* tmux a -t session_name ---> attach to session name
* tmux kill-session -t session_name ---> kill session name or number
* tmux list-commands ---> lists commands and arguments
* tmux list-keys ---> lists all key bindings

#Basic Navigation Inside tmux

* CTRL+B % ---> split to right (vertical divider)
* CTRL+B " ---> split below (horizontal divider)
* CTRL+B arrow keys ---> change panes
* CTRL+B o ---> toggle panes
* CTRL+B q ---> show pane numbers
* CTRL+B { or } ---> move panes in direction of brace
* CTRL+B z ---> full screen
* CTRL+B c ---> new window
* CTRL+B , ---> rename window
* CTRL+B window number ---> switch windows
* CTRL+B d ---> detatch from session

#Other Resource

* https://gist.github.com/MohamedAlaa/2961058
