autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

for file in ~/.aliases/*; do
  [ -r "$file" ] && source "$file"
done

# prompt
setopt PROMPT_SUBST
PS1="%F{cyan}╭─(%~%f%F{cyan})
%F{cyan}╰─%F{86}${USER:0:4}%f %F{green}\$(git branch --show-current 2>/dev/null | sed 's/^/[/' | sed 's/$/] /')%f%F{yellow}%D{%H:%M:%S}%f %F{219}❯%F{231} "

