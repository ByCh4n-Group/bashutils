#!/bin/bash

# ileride renkleri kullanıcıların tanımladığı bir yapı oluşturulur

prompt:simple:1() {
    [[ -n "${2}" ]] && local input="${2}" || local input="input"
    echo -ne "\033[0;34m[\033[0m ${1}\033[0;34m ]\033[0m 
 -\033[0;33m>\033[0m "
    read "${input}"
}