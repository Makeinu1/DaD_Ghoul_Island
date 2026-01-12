---
description: Deploy completed replay to the website and GitHub Pages
allowed-tools: Bash, Read, Write, Edit, Glob
---

# Webサイトデプロイ

完成したリプレイをWebサイトに公開します。

## デプロイチェックリスト

@.claude/rules/07_web-deployment.md

## 実行手順

### Step 1: リプレイファイルをコピー

```bash
cp "05_リプレイ/完成版/第X回_*.md" "09_Webサイト/docs/replays/sessionXX.md"
```

### Step 2: mkdocs.yml を更新

`09_Webサイト/mkdocs.yml` のnavセクションに新しいセッションを追加

### Step 3: deploy-mkdocs.yml を更新（重要）

`.github/workflows/deploy-mkdocs.yml` のリプレイコピー部分に新しいセッションを追加

```bash
cp "05_リプレイ/完成版/第XX回_タイトル.md" "09_Webサイト/docs/replays/sessionXX.md"
```

**注意**: この手順を忘れると、GitHub Actionsでのデプロイ時にファイルがコピーされず404エラーになります。

### Step 4: index.md を更新

`05_リプレイ/_Webコンテンツ/index.md` を更新し、Webサイトにコピー

### Step 5: ビルド

```bash
cd "09_Webサイト" && mkdocs build --clean
```

### Step 6: デプロイ

```bash
mkdocs gh-deploy --force
```

### Step 7: 確認（重要）

**デプロイ後に必ず実際のURLにアクセスして表示確認**

```
https://makeinu1.github.io/DaD_Ghoul_Island/replays/sessionXX/
```

1-2分待ってから確認すること。404の場合は再デプロイ。

### Step 8: Git コミット

```bash
git add -A && git commit -m "Add: 第X回リプレイをWebサイトに追加" && git push origin main
```

## よくあるトラブル

- **404エラー**: `mkdocs gh-deploy --force` を再実行
- **CSSが崩れる**: `site_url` が設定されているか確認
- **画像が表示されない**: パスを `../images/` に修正
