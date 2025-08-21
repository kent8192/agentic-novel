# ベースイメージとしてNode.js 18を指定
FROM node:18-slim

# 便利な開発ツールとzshをインストール
RUN apt-get update && apt-get install -y --no-install-recommends \
    zsh \
    git \
    curl \
    wget \
    nano \
    vim \
    tmux \
    neovim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY CLAUDE.md /workspace/CLAUDE.md
COPY GEMINI.md /workspace/GEMINI.md

# Claude Codeをグローバルにインストール
RUN npm install -g @anthropic-ai/claude-code
RUN npm install -g @google/gemini-cli

# 作業ディレクトリを設定
WORKDIR /workspace
