#!/bin/python3
import random, subprocess

PATH = "$HOME/.config/eww/bar/sounds/"
SOUNDS = ["close_dashboard.ogg", "close_wid.ogg", "close_wid_2.ogg"]

def main():
    select = random.randint(0,2)
    subprocess.run(f"paplay {PATH}{SOUNDS[select]}", shell=True)

if __name__ == "__main__":
    main()
