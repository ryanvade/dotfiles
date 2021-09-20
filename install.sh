#!/bin/zsh

# Imports
source ./mac.sh
source ./linux.sh


function unsupported () {
    echo "Unsupported Platform"
    exit 1
}

function main () {
    unameOut="$(uname -s)"
    case "${unameOut}" in
        Linux*)     bootstrap_linux ;;
        Darwin*)    bootstrap_mac ;;
        *)          unsupported ;;
    esac
}

main