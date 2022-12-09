#!/usr/bin/env bash

set -e  # Abort script at first error, when a command exits with non-zero status (except in until or while loops, if-tests, list constructs)


printf 'What is the name of your Perl pogram ? '
read answer

FILE=$(pwd)/$answer

createfile () {
    if [ ! -f "$FILE" ]; then
        
        cat > $FILE <<- EOF
#!/usr/bin/env bash


use strict;
use warnings;
EOF
        
    else
        echo "Your file $(basename $FILE) already exists"
    fi
}

createfile