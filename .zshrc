# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# 1. Load cấu hình mặc định của CachyOS (giúp có autosuggestions, highlights...)
# Export đường dẫn cơ bản
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Kích hoạt Starship
eval "$(starship init zsh)"
alias dupc-save="~/cachyos_dupc/update.sh && cd ~/cachyos_dupc && git add . && git commit -m 'Auto Update' && git push"
