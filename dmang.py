#!/usr/bin/python

import sys

class Installer:
    def __init__(self, name):
        self.name = name

    def check_installer(self, script):
        with open(script) as scr:
            source = scr.read()
            idx = source.find(f"# {self.name}")
            if idx == -1:
                return 0

        self.script = script
        return 1

    def install(self):
        source = self._install_idx()
        if not source:
            print("Something Wrong With the Config")
            exit()

        installation_instructions = ""
        for src in source:
            if src[0][0] == "#":
                return installation_instructions
            installation_instructions += src

        return installation_instructions

    def _install_idx(self):
        with open(self.script) as script:
            i = 1
            source = script.readlines()
            for src in source:
                if src == f"# {self.name}\n":
                    return source[i:]
                i += 1
        return ""


def main():
    if len(sys.argv) < 3:
        raise IndexError("pass full arguments [Installer name] [install/config]")

    installer_name = sys.argv[1]
    script = sys.argv[2]

    print(f"#Selected Installer: {installer_name}")
    print(f"#Selected Script: {script}")

    installer = Installer(installer_name)
    if not installer.check_installer(script):
        raise ValueError("Installer Doesn't Exist")

    commands = installer.install()
    print(commands)

main()
