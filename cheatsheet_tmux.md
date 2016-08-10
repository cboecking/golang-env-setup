#Basic Navigation Inside tmux (prefix = CTRL+B)

* [ ---> start moving cursor around screen
* alt w ---> copy region
* ] ---> paste
* % ---> split pane to right (vertical divider)
* " ---> split pane below (horizontal divider)
* arrow keys ---> change panes
* o ---> toggle panes
* q ---> show pane numbers
* CTRL+o ---> swap panes
* { or } ---> move panes in direction of brace
* z ---> pane full screen toggle
* c ---> new window
* , ---> rename window
* w ---> list windows
* f ---> find window
* window number ---> switch windows
* d ---> detatch from session

#Command Line

* tmux ---> start tmux
* tmux new -s session_name ---> start tmux with session name
* tmux ls ---> list tmux sessions
* tmux a # session_number ---> attach to session number
* tmux a -t session_name ---> attach to session name
* tmux kill-session -t session_name ---> kill session name or number
* tmux list-commands ---> lists commands and arguments
* tmux list-keys ---> lists all key bindings

#Other Resources

* https://gist.github.com/MohamedAlaa/2961058
