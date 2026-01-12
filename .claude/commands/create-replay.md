---
description: Create a new replay episode from player logs and audio transcripts
allowed-tools: Read, Grep, Glob, Write, Edit
---

# リプレイ初稿作成

第$ARGUMENTS回のリプレイ小説を作成します。

## 必須参照ファイル

以下のファイルを必ず読んでから執筆を開始してください:

1. `04_プレイヤーログ/巡礼者_PLチョモラン/第$ARGUMENTS回目.txt`
2. `04_プレイヤーログ/シャルル_PLまけいぬ/第$ARGUMENTS回目_*.txt`（あれば）
3. `04_プレイヤーログ/ノクシル_PLたつや/第$ARGUMENTS回目.txt`（あれば）
4. `07_セッション音声ログ/第$ARGUMENTS回目-*.srt`

## ガイドライン

@.claude/rules/02_data-priority.md
@.claude/rules/03_replay-guidelines.md
@.claude/rules/05_character-style.md
@05_リプレイ/テンプレート/リプレイテンプレート.md

## 重要な注意事項

- **一次データを最優先**: プレイヤーログ > 音声ログ > 既存リプレイ
- **キャラ評を鵜呑みにしない**: 過去の誤りが含まれている可能性あり
- **話者エラーに注意**: 自分自身を呼ぶ発言がないか確認

## 出力先

`05_リプレイ/作業中/第$ARGUMENTS回_（タイトル）.md`

完成後、ユーザーレビューを経て `05_リプレイ/完成版/` に移動します。

## 執筆後のチェックリスト

- [ ] 一次データとの事実確認完了
- [ ] 文体統一ガイドラインに従っているか
- [ ] セリフ洗練化ガイドラインに従っているか
- [ ] 話者エラーがないか
- [ ] シーン構成が適切か
