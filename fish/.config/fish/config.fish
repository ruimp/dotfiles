if status is-interactive # greeting
    set -g fish_greeting

    # path
    fish_add_path ~/.cargo/bin # env

    set -x EDITOR hx
    set -x VISUAL hx
    set -x TYPST_FONT_PATHS ~/.fonts

    # alias
    alias ls="eza --icons"
    alias skim="open -a Skim"
    alias brewme="brew update && brew upgrade && brew cleanup"

    # load
    eval (/opt/homebrew/bin/brew shellenv)
    starship init fish | source
    zoxide init fish | source
end

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/Users/rmp/.opam/opam-init/init.fish' && source '/Users/rmp/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true
# END opam configuration
