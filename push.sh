#!/bin/bash
# 快速推送脚本 - 更新 AI 资源清单到 GitHub

cd "$(dirname "$0")"

echo "📝 正在推送 AI 资源清单更新..."

# 检查是否有修改
if [ -z "$(git status --porcelain)" ]; then
    echo "⚠️  没有检测到修改，无需推送"
    exit 0
fi

# 添加所有修改
git add .

# 提交（使用参数作为提交信息，或使用默认）
if [ -n "$1" ]; then
    git commit -m "$1"
else
    git commit -m "chore: 更新资源清单"
fi

# 推送
git push

echo "✅ 推送成功！"
echo ""
echo "📍 仓库地址：https://github.com/asiyoua/ai-resources-list"
