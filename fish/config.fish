set fish_greeting  # Supress fish's intro message
set -U EDITOR "nvim"
set -U VISUAL "nvim-qt"
fish_vi_key_bindings

function vim
  nvim $argv
end
