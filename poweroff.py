#!/bin/python3
import subprocess
import sys

def main():
    subprocess.run("paplay $HOME/.config/bspwm/assets/sounds/power_question.ogg &", shell=True)
    print("¿Quieres apagar el pc?")
    answer=input("s/n:  ")

    if (answer == "s"):
        subprocess.run("paplay $HOME/.config/bspwm/assets/sounds/power.ogg", shell=True)
        subprocess.run("poweroff", shell=True)
    elif (answer == "n"):
        sys.exit()
    else:
        print("Opcion invalida")


if __name__ == "__main__":
    main()
