#!/usr/bin/bash
FT=$1
if [ -d .vim-build ]; then
    if [ ! -f .vim-build/restart.sh ]; then
        touch .vim-build/restart.sh
        echo "#!/usr/bin/bash" >> .vim-build/restart.sh
        eval "~/.config/nvim/autoconfig/$FT/req-restart.sh"
        chmod +x .vim-build/restart.sh
    fi
fi
