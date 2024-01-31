#!/bin/python3
import subprocess

def main():
    subprocess.run("neofetch", shell=True)
    subprocess.run("paplay $HOME/.config/bspwm/assets/sounds/neofetch.ogg &", shell=True)

if __name__ == "__main__":
    main()
