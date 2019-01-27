#!/usr/bin/env bash
if [[ -z "$TMUX" ]] ;then
    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
	fst=~/priorities/nsg
	snd=~/priorities/crayfish
	
        tmux new-session -s default -n primary -c $fst \; \
	     split-window -h -l130 \; \
	     split-window -v -l15 \; \
	     split-window -h \; \
	     send-keys 'source ~/R/pvenv/bin/activate' C-m \; \
	     new-window -n secondary \; \
	     split-window -c $snd -h -l130 \; \
	     split-window -c $snd -v -l15\; \
	     split-window -c $snd -h \; \
	     send-keys 'grep todo todo.log' C-m \; \
	     new-window -n servers \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     split-window -c ~ -h -p 90 \; \
	     select-layout tile
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi

# Note the -d option wasted me a lot of time
# as it can't find the right size of a terminal
# https://github.com/Microsoft/vscode/issues/44325