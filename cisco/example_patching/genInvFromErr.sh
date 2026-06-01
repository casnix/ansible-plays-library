#!/bin/sh

python3 -c "exec(\"from pprint import pprint\nimport re\n\nwith open('$1') as f: s = f.read()\nprint(\\\"\\\n\\\".join(re.findall(r'fatal: \\\[(.+\\\.mgmt\\\.example\\\.com)\\\].*', s)))\")"
