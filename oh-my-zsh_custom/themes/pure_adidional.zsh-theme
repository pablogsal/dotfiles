# heavily inspired by the wonderful pure theme
# https://github.com/sindresorhus/pure

# indicate a job (for example, vim) has been backgrounded
# If there is a job in the background, display a ✱
suspended_jobs() {
    local sj
    sj=$(jobs 2>/dev/null | tail -n 1)
    if [[ $sj == "" ]]; then
        echo ""
    else
        echo "%{$FG[208]%}✱%f"
    fi
}

export RPROMPT='`suspended_jobs`'
