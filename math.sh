#!/bin/bash

## Constants

# Pi
export PI="3.14159"
# Naiper's constant
export E="2.71828"
# Pisagor constant
export PC="1.41421"
# Theodorus constant
export TC="1.73205"
# Euler Mascheroni constant
export EMC="0.57721"
# Golden mean
export GM="1.61803"
# Embree Trefethen constant
export ETC="0.70258"

math:req() {
    case "${1}" in
        [bB][cC]|--[bB][cC]|-[bB])
            if ! command -v bc &> /dev/null ; then
                echo "bc not found!"
                return 1
            fi
        ;;
        [aA][wW][kK]|--[aA][wW][kK]|-[aA])
            if ! command -v awk &> /dev/null ; then
                echo "awk not found!"
                return 1
            fi
        ;;
        *)
            # Matrix (all things are simulation)
            echo "am i real?"
            if ! [[ "${BASH_SOURCE[0]}" = "${0}" ]] ; then
                return 1
            fi
        ;;
    esac
}

math:sqrt() {
    # Square Root
    math:req bc || return 1
    echo "scale=0;sqrt(${1})" | bc
}

math:is_integer() {
    if [[ "$((${1} + 1))" -eq "$((${1} + 1))" ]] ; then
        :
    fi
}