for file in ~/.bash_{exports,prompt,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

ulimit -n 10240

eval "$(rbenv init -)"

alias handgun='/Users/rimidl/work/nptv/handgun/bin/run'
