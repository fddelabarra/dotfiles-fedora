# Check if exa is installed
if type -q exa
    alias ls "exa --group-directories-first"
    alias ll "ls -l --git"
    alias lsa="ls -la"
    alias la="ls -la"
    alias l "ll -a"
    alias tree="ll -T"
    alias lx='ll -sextension'     # Long format, sort by extension
    alias lk='ll -ssize'          # Long format, largest file size last
    alias lt='ll -smodified'      # Long format, newest modification time last
    alias lc='ll -schanged'       # Long format, newest status change (ctime) last
end
