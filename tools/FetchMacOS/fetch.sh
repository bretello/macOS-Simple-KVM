#!/bin/bash

# fetch.sh: Run fetch-macos.py with safety checks
# by Foxlet <foxlet@furcode.co>

set +x
set -e
SCRIPTDIR="$(dirname "$0")"
cd "$SCRIPTDIR"

if [[ -z $VIRTUAL_ENV ]]; then
	printf "Set up a virtual env:\n\tpython -m venv .venv && source .venv/bin/activate\n" >&2
	exit 1
fi

pip install -r requirements.txt
python fetch-macos.py "$@"

exit
