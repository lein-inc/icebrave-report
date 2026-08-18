#!/bin/bash
# report.html を暗号化して index.html を更新（平文 src/ はコミット対象外）
set -e
cd "$(dirname "$0")"
cp ~/Desktop/claude_data/icebrave_report/report.html src/index.html
npx staticrypt src/index.html -p "icebrave-report-2026" -d . --short \
  --template-title "Ice Brave 分析レポート" \
  --template-instructions "パスワードを入力してください" \
  --template-button "表示" \
  --template-placeholder "パスワード" \
  --template-color-primary "#2271b1" \
  --template-color-secondary "#f6f7f9"
echo "done: index.html"
