#!/usr/bin/bash
FT=$1
if [ -d .vim-build ]; then
    if [ ! -f .vim-build/run.sh ]; then
        touch .vim-build/run.sh
        echo "#!/usr/bin/bash" >> .vim-build/run.sh
        eval "~/.config/nvim/autoconfig/$FT/req-run.sh"
        chmod +x .vim-build/run.sh
    fi
fi
