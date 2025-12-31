# GitHub Pages セットアップガイド

D&D 食屍鬼島キャンペーン リプレイサイトを GitHub Pages + MkDocs で公開するための手順です。

---

## 📋 前提条件

- GitHubアカウントを持っている
- このリポジトリがGitHubにpush済み
- mainブランチで作業している

---

## 🚀 ステップ1: GitHubリポジトリの設定変更

### 1-1. GitHubリポジトリにアクセス

https://github.com/（あなたのユーザー名）/DaD_Ghoul_Island にアクセス

### 1-2. Settings（設定）を開く

リポジトリページの上部メニューから **Settings** をクリック

### 1-3. 検索エンジンへのインデックス登録をオフ

1. 左サイドバーの **General** （一般設定）をクリック
2. 下にスクロールして **Features** セクションを見つける
3. **「Disable search engine indexing」** にチェックを入れる
   - ⚠️ これは **Private リポジトリでは表示されません**
   - Public リポジトリの場合のみ設定可能
4. ページ下部の **Save** をクリック

> **注意**: このリポジトリが Private の場合、この設定は不要です（検索エンジンは自動的にブロックされます）。

### 1-4. GitHub Pages を有効化

1. 左サイドバーの **Pages** をクリック
2. **Source** で **Deploy from a branch** を選択
3. **Branch** で **gh-pages** ブランチを選択
   - ⚠️ 最初のデプロイ後に `gh-pages` ブランチが自動作成されます
   - まだ存在しない場合は、一度 git push してからこの設定を行ってください
4. フォルダは **/ (root)** を選択
5. **Save** をクリック

---

## 🔄 ステップ2: 変更をGitHubにプッシュ

ローカルで以下のコマンドを実行：

```bash
# 現在のディレクトリを確認
pwd
# /Users/shumpeiabe/Desktop/StableDiffusion/GitHub/DaD_Ghoul_Island にいることを確認

# 変更をステージング
git add .

# コミット
git commit -m "feat: GitHub Pages + MkDocs セットアップ完了

- 09_Webサイト/フォルダ作成
- mkdocs.yml作成（検索エンジン対策含む）
- docs/フォルダ構成作成
- トップページ、キャラクター紹介（イラスト付き）、世界観ページ作成
- リプレイ全11回をdocs/replays/にコピー
- GitHub Actions自動デプロイ設定（09_Webサイト/対応）
- robots.txt、robotsメタタグによる検索エンジン対策"

# GitHubにプッシュ
git push origin main
```

---

## ⏳ ステップ3: GitHub Actions の実行を確認

### 3-1. Actions タブを開く

1. GitHubリポジトリページの上部メニューから **Actions** をクリック
2. 「Deploy MkDocs to GitHub Pages」ワークフローが実行中であることを確認
3. 完了まで約2-3分待つ
4. 緑色のチェックマークが表示されたら成功！

### 3-2. エラーが出た場合

- ワークフロー名をクリックして詳細を確認
- エラーメッセージを確認して修正
- 修正後、再度 `git push` すると自動的に再実行されます

---

## 🌐 ステップ4: サイトのURLを確認

### 4-1. Settings > Pages に戻る

1. 左サイドバーの **Pages** をクリック
2. 上部に **「Your site is live at https://（ユーザー名）.github.io/DaD_Ghoul_Island/」** と表示されます
3. このURLをクリックして、サイトが表示されることを確認

### 4-2. サイトURLの例

```
https://（あなたのGitHubユーザー名）.github.io/DaD_Ghoul_Island/
```

---

## 🔒 ステップ5: 検索エンジン対策の確認

### 5-1. robots.txtの確認

ブラウザで以下のURLにアクセス：

```
https://（ユーザー名）.github.io/DaD_Ghoul_Island/robots.txt
```

以下の内容が表示されればOK：

```
User-agent: *
Disallow: /
```

### 5-2. robotsメタタグの確認

1. サイトのトップページにアクセス
2. ブラウザの開発者ツールを開く（F12キーまたは右クリック→検証）
3. `<head>` タグ内に以下のタグがあることを確認：

```html
<meta name="robots" content="noindex, nofollow">
<meta name="googlebot" content="noindex, nofollow">
```

---

## ✅ 完了チェックリスト

以下をすべて確認してください：

- [ ] GitHubリポジトリの設定で「Disable search engine indexing」がオン（Publicリポジトリの場合）
- [ ] GitHub Pages が有効化されている（Settings > Pages）
- [ ] GitHub Actions が正常に完了している（緑色のチェックマーク）
- [ ] サイトURLにアクセスして、トップページが表示される
- [ ] robots.txt が正しく表示される
- [ ] ページのHTMLに robotsメタタグが含まれている
- [ ] キャラクター紹介ページが表示される
- [ ] 世界観ページが表示される
- [ ] リプレイ本編（第1回～第11回）が表示される

---

## 🔗 URLの共有

すべて確認できたら、以下のURLをDMとPLに共有してください：

```
https://（あなたのGitHubユーザー名）.github.io/DaD_Ghoul_Island/
```

**注意事項:**
- このURLは検索エンジンには登録されません
- ただし、URLを知っている人は誰でもアクセスできます
- 完全にプライベートにしたい場合は、GitHub リポジトリを Private に設定してください
  - Private リポジトリの場合、GitHub Pages は無料プランでは利用できません（有料プランが必要）

---

## 🔄 今後の更新方法

### 新しいセッション（第12回以降）を追加する場合

1. 通常通り、リプレイ小説を作成（`05_リプレイ/第12回_*.md`）
2. `09_Webサイト/docs/replays/session12.md` にコピー：

```bash
cp "05_リプレイ/第12回_*.md" "09_Webサイト/docs/replays/session12.md"
```

3. `09_Webサイト/mkdocs.yml` のナビゲーションに第12回を追加：

```yaml
nav:
  - リプレイ本編:
    ...
    - 第11回 墓地の秘密と死体泥棒: replays/session11.md
    - 第12回 （タイトル）: replays/session12.md  # ← 追加
```

4. Gitにコミット＆プッシュ：

```bash
git add .
git commit -m "feat: 第12回リプレイ追加"
git push origin main
```

5. GitHub Actions が自動的に実行され、サイトが更新されます（2-3分後）

### キャラクター紹介や世界観を更新する場合

1. `09_Webサイト/docs/characters.md` または `09_Webサイト/docs/world.md` を編集
2. Gitにコミット＆プッシュ
3. 自動的にサイトが更新されます

---

## 🛠️ トラブルシューティング

### サイトが表示されない

1. GitHub Actions が正常に完了しているか確認
2. Settings > Pages で「gh-pages」ブランチが選択されているか確認
3. 10分ほど待ってから再度アクセス

### GitHub Actions がエラーで失敗する

1. Actions タブでエラーメッセージを確認
2. `09_Webサイト/requirements.txt` が正しく配置されているか確認
3. `09_Webサイト/mkdocs.yml` に文法エラーがないか確認

### リプレイページが404エラー

1. `09_Webサイト/docs/replays/sessionXX.md` ファイルが存在するか確認
2. `09_Webサイト/mkdocs.yml` のナビゲーション設定が正しいか確認
3. ファイル名が一致しているか確認（大文字小文字も含めて）

---

## 📞 サポート

問題が解決しない場合は、Claudeに相談してください。エラーメッセージやスクリーンショットを共有していただければ、トラブルシューティングをサポートします。

---

**楽しいリプレイサイト運営を！**
