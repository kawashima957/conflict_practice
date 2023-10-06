#! bin/bash

set -eu

RED='\033[0;31m'
NC='\033[0m' # No Color

# check if there are at least 2 commits
commit_count=$(git --no-pager log --oneline main | wc -l)

if [ $(( commit_count )) -ge 2 ]; then
    # do nothing
    :
else
    echo -e "${RED}You should commit at least 2 times.${NC}"
    exit 1
fi

echo "ok"
exit 0
