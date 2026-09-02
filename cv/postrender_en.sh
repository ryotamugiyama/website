#!/bin/bash
# quartoのproject: post-render から呼ばれる。
# 既定(ja)プロファイルでのRender完了後に、englishプロファイルもレンダーする。
# CV_POSTRENDER_GUARD で自分自身の呼び出しによる無限ループを防ぐ。
if [ -n "$CV_POSTRENDER_GUARD" ]; then
  exit 0
fi
export CV_POSTRENDER_GUARD=1

cd "$(dirname "$0")"
quarto render cv_header.qmd --profile en
