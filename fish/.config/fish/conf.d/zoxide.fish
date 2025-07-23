if status is-interactive
    # init
    zoxide init fish | source

    # override zi behavior to use sk instead of fzf
    function zi
        set -l result (zoxide query -l | sk)
        if test -n "$result"
            z $result
        end
    end
end
