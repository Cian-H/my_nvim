FROM docker.io/anatolelucet/neovim:nightly

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apk add fzf git nodejs python3 py3-pynvim ripgrep zig
RUN mkdir ~/.config/
RUN git clone https://github.com/Cian-H/my_nvim_config.git
WORKDIR /cwd
CMD ["/entrypoint.sh"]
