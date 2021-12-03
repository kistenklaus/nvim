#!/usr/bin/bash

FT=$1

if [ -d .vim-build ]; then
    if [ ! -f .vim-build/compile.sh ]; then
        touch .vim-build/compile.sh
        echo "#!/usr/bin/bash" >> .vim-build/compile.sh
        eval "~/.config/nvim/autoconfig/$FT/req-compile.sh"
        chmod +x .vim-build/compile.sh
    fi
fi
