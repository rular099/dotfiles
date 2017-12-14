#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
complete -cf sudo
complete -cf man
alias lantern='~/software/lantern/lantern_linux_amd64 -addr localhost:8787 -country cn'
[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh
#paraview env
export LD_LIBRARY_PATH=/usr/local/lib/paraview-5.4:/usr/local/lib/paraview-5.4/site-packages/vtk:$LD_LIBRARY_PATH

function killqq(){
ps aux | grep QQ | awk '{print $2}' | xargs kill
ps aux | grep -i tencent | awk '{print $2}' | xargs kill
}
[[ $- == *i* ]] && stty -ixon
