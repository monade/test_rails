FROM gitpod/workspace-postgres
USER gitpod

RUN sudo apt install curl git -y && \
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0 && \
    echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc && \
    echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc && \
    export ASDF_DIR=$HOME/.asdf && \
    . $HOME/.asdf/asdf.sh && \
    asdf plugin-add nodejs && \
    asdf plugin-add ruby && \
    asdf install nodejs 16.15.0 && \
    asdf install ruby 3.2.4 && \
    asdf reshim ruby