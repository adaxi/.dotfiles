#!/bin/bash

_log_activity_completions() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"

    local activities="review debug meetings"

    declare -A sub_activities
    sub_activities[review]="red sre lime"
    sub_activities[debug]="red sre sfo"
    sub_activities[meetings]="ade 121 smg other"

    if [[ $COMP_CWORD -eq 1 ]]; then
        # Completing the activity[:subactivity]
        local suggestions=()
        for activity in $activities; do
            if [[ -n "${sub_activities[$activity]}" ]]; then
                for sub in ${sub_activities[$activity]}; do
                    suggestions+=("$activity:$sub")
                done
            else
                suggestions+=("$activity")
            fi
        done
        COMPREPLY=( $(compgen -W "${suggestions[*]}" -- "$cur") )
    elif [[ $COMP_CWORD -eq 2 ]]; then
        # Completing minutes — suggest some common values
        COMPREPLY=( $(compgen -W "15 30 45 60 90 120" -- "$cur") )
    fi

    return 0
}

complete -F _log_activity_completions log
