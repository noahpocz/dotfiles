#!/usr/bin/python3

import subprocess as sp

SCRIPTS = [
    {
        'name': 'homebrew',
        # language=bash
        'script': '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
    }
]


def main():
    for name, script in SCRIPTS:
        print(f'Installing {name}...')
        sp.Popen(script, shell=True).communicate()


if __name__ == '__main__':
    main()
