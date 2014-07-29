#!/bin/sh

proper()
{
    len=${#1}
    if [ "${len}" -ge 1 ]
    then
        head="$(echo "$1" | cut -c 1 | tr "[:lower:]" "[:upper:]")"
        if [ "${len}" -ge 2 ]
        then
            body="$(echo "$1" | cut -c 2-"${len}" | tr "[:upper:]" "[:lower:]")"
            result=${head}${body}
        else
            result=${head}
        fi
    else
        result=""
    fi
    echo ${result}
    return
}

proper "AbCdEfG"
