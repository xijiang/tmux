#!/usr/bin/env bash
if [[ -z "$TMUX" ]] ;then
    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
	fst=~/priorities/nsg
	snd=~/priorities/crayfish
	
        tmux new-session -s default -n primary -c $fst \; \
	     split-window -h -l130 \; \
	     split-window -v -l64 \; \
	     last-pane \; \
	     split-window -h \; \
	     send-keys 'grep todo README.md' C-m \; \
	     new-window -c $snd -n secondary \; \
	     split-window -c $snd -h -l130 \; \
	     split-window -c $snd -v -l64 \; \
	     last-pane \; \
	     split-window -c $snd -h \; \
	     send-keys 'grep todo README.md' C-m \; \
	     new-window -c ~ -n servers \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     send-keys 'source ~/R/pvenv/bin/activate' C-m \; \
	     send-keys 'jupyter-notebook' C-m \; \
	     select-layout tile
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi

# Note the -d option wasted me a lot of time
# as it can't find the right size of a terminal
# https://github.com/Microsoft/vscode/issues/44325
