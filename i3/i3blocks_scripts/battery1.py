#!/usr/bin/env python3

import subprocess
import re

out = str(subprocess.check_output("acpi"))

reg = re.search(r".*:\s(.*),\s(\d\d%),\s(\d\d:\d\d):\d\d.*$",out)

status = reg[1]
perc = reg[2]
time = reg[3]

stri = "\033[1;36;40m "+status

subprocess.call(["echo",stri])