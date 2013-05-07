mkcd() { mkdir -p "$@" && cd $_; }
alias upd="sudo apt-get update && sudo apt-get dist-upgrade"
alias gg="g++ -O2 -std=gnu++11"
alias ggg="git add -A && git commit && git push"
zzz() {
  if [[ $# -eq 2 ]]; then
    gg "$1" && a.out < "$2"
  fi
}
