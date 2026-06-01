#!/bin/bash

python3 -c "exec(\"from pprint import pprint\nimport re\n\nwith open('$1') as f: s = f.read()\npprint(re.findall(r'fatal: \\\[(.+)\\\.mgmt\\\.example\\\.com\\\].*\\\"msg\\\": \\\"(.*)\\\"', s))\")"
