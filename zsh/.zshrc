# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# ~/.zshrc
#

# If not running interactively, exit early
[[ -z $PS1 ]] && return

# === PATH & ENVIRONMENT =======================================================

export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# pnpm
export PNPM_HOME="/home/johans/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Julia
export PATH="$HOME/.juliaup/bin:$PATH"

# SSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# === ZNAP (plugin manager) ====================================================

# Load Znap
source ~/.config/zsh/.znap/znap.zsh

# Example plugins (you can add/remove freely)
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
# znap source zsh-users/zsh-completions

# === POWERLEVEL10K ============================================================

# Load Powerlevel10k theme
source "$ZDOTDIR/.p10k/powerlevel10k.zsh-theme"

# User config for p10k
[[ ! -f "$ZDOTDIR/.p10k.zsh" ]] || source "$ZDOTDIR/.p10k.zsh"
