if status is-interactive
    # greeting
    set -g fish_greeting

    # variables
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
