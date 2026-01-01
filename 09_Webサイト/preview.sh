#!/bin/bash

# ローカルプレビュー用スクリプト
# 05_リプレイ/ から docs/ へファイルをコピーしてから mkdocs serve を実行

echo "📄 Webコンテンツをコピー中..."

# Webコンテンツをコピー（index.md, world.md）※characters.mdは不要に
cp ../05_リプレイ/_Webコンテンツ/index.md docs/
cp ../05_リプレイ/_Webコンテンツ/world.md docs/

# リプレイファイルをコピー＆リネーム
cp "../05_リプレイ/第1回_レサンテ港からの旅立ち.md" "docs/replays/session01.md"
cp "../05_リプレイ/第2回_嵐と異形の襲撃.md" "docs/replays/session02.md"
cp "../05_リプレイ/第3回_ファルジーン島への上陸.md" "docs/replays/session03.md"
cp "../05_リプレイ/第4回_ファルジーン市への道.md" "docs/replays/session04.md"
cp "../05_リプレイ/第5回_ファルジーン市での探索.md" "docs/replays/session05.md"
cp "../05_リプレイ/第6回_拘置所の騒動と地下道へ.md" "docs/replays/session06.md"
cp "../05_リプレイ/第7回_血溜まり部屋の戦闘.md" "docs/replays/session07.md"
cp "../05_リプレイ/第8回_グール氏族との対話.md" "docs/replays/session08.md"
cp "../05_リプレイ/第9回_ゴート教団への旅.md" "docs/replays/session09.md"
cp "../05_リプレイ/第10回_過去からの訪問者.md" "docs/replays/session10.md"
cp "../05_リプレイ/第11回_墓地の秘密と死体泥棒.md" "docs/replays/session11.md"

echo "👥 キャラクター評価をコピー中..."
# キャラクター評価をコピー＆画像パスを書き換え
mkdir -p docs/characters
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/巡礼者_キャラクター評.md" > "docs/characters/junreisha.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/ノクシル・グリムホルト_キャラクター評.md" > "docs/characters/noxil.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/シャルル・ビアトリス_キャラクター評.md" > "docs/characters/charles.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_センサ船長_キャラクター評.md" > "docs/characters/censa.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_ネギ_キャラクター評.md" > "docs/characters/negi.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_ディードリド_キャラクター評.md" > "docs/characters/deedlit.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_セラフィナ_キャラクター評.md" > "docs/characters/seraphina.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_ルンジャタ_キャラクター評.md" > "docs/characters/runjata.md"
sed 's|../06_イラスト/|../images/|g' "../08_LLMによるキャラ評/NPC_シマ_キャラクター評.md" > "docs/characters/shima.md"

echo "🖼️ イラストをコピー中..."
# イラストファイルをコピー
cp "../06_イラスト/巡礼者.png" "docs/images/"
cp "../06_イラスト/ノクシル.png" "docs/images/"
cp "../06_イラスト/シャルル.png" "docs/images/"
cp "../06_イラスト/NPC_セラフィナ.png" "docs/images/"
cp "../06_イラスト/NPC_ルンジャダ.jpg" "docs/images/"
cp "../06_イラスト/シマ.jpeg" "docs/images/"

echo "✅ コピー完了"
echo ""
echo "🚀 MkDocsプレビューサーバーを起動中..."
echo "   ブラウザで http://127.0.0.1:8000/ にアクセスしてください"
echo "   終了するには Ctrl+C を押してください"
echo ""

# MkDocsプレビューサーバーを起動
mkdocs serve
