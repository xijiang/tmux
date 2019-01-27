# My usagel of tmux
My two cents about using tmux

## Setup
```bash
cd ywd  # your-work-directory
git clone https://github.com/xijiang/tmux
cp tmux/tmux.conf ~/.tmux.conf
mkdir -p ~/bin \
  && cp tmux/my-tmux-session.sh ~/bin \
  && chmod u+x ~/bin/my-tmux-session.sh
alias mux=~/bin/my-tmux-session.sh  # can put this into .bashrc
# One can modify my-tmux-session.sh
# for own default primary and secondory working directories
```

## Description
This setup will create a tmux session projects, if it is not exists.  Or, attach to session projects.

## Windows
### 1: Main project
- pane editor
- pane view
- pane run
- pane todo log

### 2: Secondary project
- pane editor
- pane view
- pane run
- pane todo log

### 3: All my servers
- nmbu
- 50
- 170
- 171
- home
- git
- abel
- jupyter-notebook

## ToDo
- todo: add servers