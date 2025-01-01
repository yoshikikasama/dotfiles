#!/bin/bash

# 管理するファイルリスト
files=(
  ".zshrc"
  ".bash_profile"
)

# 実行ディレクトリ
DOTFILES_DIR=$(cd $(dirname $0); pwd)

# リンクを作成
for file in "${files[@]}"; do
  source_file="$DOTFILES_DIR/$file"
  target_file="$HOME/$file"

  # 既存ファイルをバックアップ
  if [ -e "$target_file" ] && [ ! -L "$target_file" ]; then
    mv "$target_file" "${target_file}.bak"
  fi

  # シンボリックリンク作成
  ln -sf "$source_file" "$target_file"
  echo "Linked $target_file -> $source_file"
done
