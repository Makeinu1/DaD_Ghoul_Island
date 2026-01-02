# Webサイトデプロイガイド

**最終更新:** 2026-01-02

---

## 📌 概要

このガイドでは、第12回以降の新規セッションをWebサイトに追加する手順を説明します。

**詳細は [`CLAUDE.md`](../../CLAUDE.md) の「Webサイトデプロイ手順」セクションを参照してください。**

---

## 🎯 クイックスタート（第12回追加の例）

### 1. リプレイファイルをコピー

```bash
cd /Users/shumpeiabe/Desktop/StableDiffusion/GitHub/DaD_Ghoul_Island
cp "05_リプレイ/第12回_（タイトル）.md" "09_Webサイト/docs/replays/session12.md"
```

### 2. mkdocs.yml を更新

`09_Webサイト/mkdocs.yml` の `nav` セクションに追加：

```yaml
  - リプレイ本編:
    - 第1回 レサンテ港からの旅立ち: replays/session01.md
    # ... 既存のセッション ...
    - 第12回 （タイトル）: replays/session12.md  # 新規追加
```

### 3. index.md を更新

`05_リプレイ/_Webコンテンツ/index.md` に新しいセッションのあらすじを追加：

```markdown
- [第12回 （タイトル）](replays/session12.md)
  （あらすじ）
```

編集後、コピー：

```bash
cp "05_リプレイ/_Webコンテンツ/index.md" "09_Webサイト/docs/"
```

### 4. ビルド＆デプロイ

```bash
cd "09_Webサイト"
mkdocs build --clean
mkdocs gh-deploy --force
```

### 5. Gitコミット

```bash
cd /Users/shumpeiabe/Desktop/StableDiffusion/GitHub/DaD_Ghoul_Island
git add -A
git commit -m "Add: 第12回リプレイをWebサイトに追加"
git push origin main
```

---

## 🆕 新NPCが登場した場合

### キャラ評をコピー

```bash
cp "08_LLMによるキャラ評/NPC_（新キャラ名）_キャラクター評.md" "09_Webサイト/docs/characters/（新キャラ名英語）.md"
cd "09_Webサイト/docs/characters"
sed -i '' 's|../06_イラスト/|../images/|g' （新キャラ名英語）.md
```

### イラストをコピー

```bash
cp "06_イラスト/NPC_（新キャラ名）.（拡張子）" "09_Webサイト/docs/images/"
```

### mkdocs.yml の nav に追加

```yaml
  - キャラクター紹介:
    - NPC:
      - センサ船長: characters/censa.md
      # ... 既存のNPC ...
      - （新キャラ名）: characters/（新キャラ名英語）.md  # 新規追加
```

---

## ⚠️ 重要な注意事項

### 自動生成ファイルは手動で編集しない

以下のファイルは `.gitignore` で除外され、**自動生成される**ため、手動で編集しないでください：

- `09_Webサイト/docs/index.md`
- `09_Webサイト/docs/world.md`
- `09_Webサイト/docs/replays/*.md`
- `09_Webサイト/docs/characters/*.md`

### 編集する場合は元ファイルを編集

- **index.md/world.md** → `05_リプレイ/_Webコンテンツ/` で編集してコピー
- **リプレイページ** → `05_リプレイ/` で編集してコピー
- **キャラクターページ** → `08_LLMによるキャラ評/` で編集してコピー

---

## 🔍 デプロイ後のチェック

1～2分待ってから、以下を確認：

- [ ] https://Makeinu1.github.io/DaD_Ghoul_Island/ が表示される
- [ ] CSSが正しく表示されている
- [ ] 新しいリプレイページが表示される
- [ ] キャラクターページの画像が表示される

---

## 📚 詳細情報

**詳細なトラブルシューティングやClaude向けプロンプト例は、[CLAUDE.md](../../CLAUDE.md) の「Webサイトデプロイ手順」セクションを参照してください。**
