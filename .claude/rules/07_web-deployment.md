---
paths:
  - "09_Webサイト/**/*"
---

# Webサイトデプロイ手順

このルールは `09_Webサイト/` 配下のファイル編集時に自動適用されます。

---

## デプロイチェックリスト

新規セッション追加時に必ず確認すること：

### Step 1: ファイル準備

- [ ] リプレイをWebサイトにコピー
  ```bash
  cp "05_リプレイ/第X回_*.md" "09_Webサイト/docs/replays/sessionXX.md"
  ```
- [ ] 新NPCのキャラ評とイラストをコピー（必要に応じて）
- [ ] 画像パスを修正（`../06_イラスト/` → `../images/`）

### Step 2: 設定更新

- [ ] `09_Webサイト/mkdocs.yml` のnavセクション更新
- [ ] `05_リプレイ/_Webコンテンツ/index.md` を更新
- [ ] index.mdをWebサイトにコピー

### Step 3: ビルド・デプロイ

- [ ] ビルド警告なし確認
  ```bash
  cd "09_Webサイト" && mkdocs build --clean
  ```
- [ ] デプロイ実行
  ```bash
  mkdocs gh-deploy --force
  ```

### Step 4: 確認（重要）

- [ ] **デプロイ後に実際のURLにアクセスして表示確認**
  - 例: `https://makeinu1.github.io/DaD_Ghoul_Island/replays/session12/`
  - 1-2分待ってから確認

### Step 5: Git

- [ ] コミット・プッシュ

---

## よくあるトラブル

### 404エラーが発生する

**原因**: `mkdocs gh-deploy` が正常終了しても、ファイルが正しくプッシュされないことがある

**対策**:
1. `mkdocs gh-deploy --force` を再実行
2. 実際のURLにアクセスして確認

### CSSが崩れている

**原因**: `site_url` が mkdocs.yml に設定されていない

**解決**:
```yaml
site_url: https://Makeinu1.github.io/DaD_Ghoul_Island/
```

### 画像が表示されない

**原因**: 画像パスが `../06_イラスト/` のまま

**解決**:
```bash
cd "09_Webサイト/docs/characters"
sed -i '' 's|../06_イラスト/|../images/|g' *.md
```

### characters.md リンク切れ警告

**原因**: index.mdにcharacters.mdへのリンクがあるが、ファイルが存在しない

**対応**: 今後キャラクター紹介ページを作成するか、リンクを個別ページに変更

---

## URL形式

MkDocsのURL規則：
- `.md`拡張子は使用しない
- 末尾に`/`を付ける

```
✅ /replays/session12/
❌ /replays/session12.md
```
