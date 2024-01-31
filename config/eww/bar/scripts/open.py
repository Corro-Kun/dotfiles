#!/bin/python3
import random, subprocess

PATH = "$HOME/.config/eww/bar/sounds/"
SOUNDS = ["open_wid.ogg", "open_wid_2.ogg", "open_wid_3.ogg"]

def main():
    select = random.randint(0,2)
    subprocess.run(f"paplay {PATH}{SOUNDS[select]}", shell=True)

if __name__ == "__main__":
    main()
