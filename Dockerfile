FROM docker.io/anatolelucet/neovim:nightly

RUN apk add fzf git nodejs python3 py3-pynvim ripgrep zig
RUN mkdir ~/.config/
RUN git clone https://github.com/Cian-H/my_nvim_config.git
RUN mv my_nvim_config ~/.config/nvim
