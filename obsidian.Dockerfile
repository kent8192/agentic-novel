FROM lscr.io/linuxserver/obsidian:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-noto-cjk \
    fcitx5 \
    fcitx5-mozc \
    mozc-utils-gui \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*