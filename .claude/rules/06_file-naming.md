# ファイル命名規則

---

## プレイヤーログ

```
04_プレイヤーログ/
├── 巡礼者_PLチョモラン/
│   └── 第X回目.txt
├── シャルル_PLまけいぬ/
│   ├── 第X回目_シャルル日誌.txt
│   └── 第X回目_メモ.txt
└── ノクシル_PLたつや/
    └── 第X回目.txt
```

## 音声ログ

```
07_セッション音声ログ/
└── 第X回目-1.srt, 第X回目-2.srt（複数ファイルの場合は連番）
```

## リプレイ

```
05_リプレイ/
└── 第X回_（タイトル）.md
```

**例**: `第12回_地下に潜む影.md`

## キャラクター評価

```
08_LLMによるキャラ評/
├── PC_（キャラクター名）_キャラクター評.md
└── NPC_（キャラクター名）_キャラクター評.md
```

**例**:
- `巡礼者_キャラクター評.md`
- `NPC_シマ_キャラクター評.md`

## Webサイト用

```
09_Webサイト/docs/replays/
└── session01.md - session12.md
```

**URL形式**:
- ✅ `https://makeinu1.github.io/DaD_Ghoul_Island/replays/session12/`
- ❌ `https://makeinu1.github.io/DaD_Ghoul_Island/replays/session12.md`

**注意**: MkDocsは`.md`を付けず、末尾に`/`を付ける

---

## Git コミットメッセージ

```
Add: 第X回リプレイ小説を追加
Fix: 第X回の事実誤認を修正（一次データに基づく）
Docs: CLAUDE.mdを更新
Update: キャラクター評価をVer.X.Xに更新
```
