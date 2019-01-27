# My usagel of tmux
My two cents about using tmux

## Setup
```bash
cd ywd  # your-work-directory
git clone https://github.com/xijiang/tmux
cp tmux/tmux.conf ~/.tmux.conf
mkdir -p ~/bin && cp tmux/my-tmux-session.sh ~/bin && chmod u+x ~/bin/my-tmux-session.sh
alias mux=~/bin/my-tmux-session.sh
```

## Description
This setup will create a tmux session projects, if it is not exists.  Or, attach to session projects.

## Windows
### 1: Main project
- pane editor
- pane view
- pane run
- pane remote

### 2: Secondary project
- pane editor
- pane view
- pane run
- pane remote

### 3: All my servers
- nmbu
- 50
- 170
- 171
- home
- git
- abel
- jupyter-notebook
