if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ram/miniconda3/bin/conda
    eval /home/ram/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ram/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ram/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ram/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


starship init fish | source
zoxide init fish | source

function fish_greeting
    fortune -a
end
