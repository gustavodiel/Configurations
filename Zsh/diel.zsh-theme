local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜) "

PROMPT='${ret_status}%{$fg[cyan]%}[%{$fg[yellow]%} %n %{$fg[cyan]%}:%{$fg[red]%} ${PWD/#$HOME/~} %{$fg[cyan]%}]%{$reset_color%} $(git_prompt_info)%{$reset_color%}'

script="from netifaces import interfaces, ifaddresses, AF_INET
import sys

ips = []

for ifaceName in interfaces():
    addresses = [i['addr'] for i in ifaddresses(ifaceName).setdefault(AF_INET, [{'addr':'nope'}] )]
    if (addresses[0] != 'nope' and addresses[0] != '127.0.0.1'):
        ips.extend(addresses)

sys.stdout.write(', '.join(ips))"

function get_ips {
	echo `python -c $script` 2>/dev/null
}

RPROMPT='%{$fg_bold[cyan]%}< %{$fg[magenta]%}$(get_ips)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}[ %{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%} ] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%} ]"