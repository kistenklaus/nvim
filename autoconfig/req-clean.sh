#!/usr/bin/bash
FT=$1
if [ -d .vim-build ]; then
    if [ ! -f .vim-build/clean.sh ]; then
        touch .vim-build/clean.sh
        echo "#!/usr/bin/bash" >> .vim-build/clean.sh
        eval "~/.config/nvim/autoconfig/$FT/req-clean.sh"
        chmod +x .vim-build/clean.sh
    fi
fi
