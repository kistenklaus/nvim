#!/usr/bin/bash
FT=$1
if [ -d .vim-build ]; then
    if [ ! -f .vim-build/setup.sh ]; then
        touch .vim-build/setup.sh
        echo "#!/usr/bin/bash" >> .vim-build/setup.sh
        eval "~/.config/nvim/autoconfig/$FT/req-setup.sh"
        chmod +x .vim-build/setup.sh
    fi
fi
