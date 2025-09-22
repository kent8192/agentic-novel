# MCPサーバー指示

## Desktop Commander設定
- 作業ディレクトリ: /Users/kent8192/Projects/agentic-novel
- ファイル操作はDesktop Commander MCPを優先使用

## Gemini CLI設定
- モデル: gemini-2.5-pro（デフォルト）
- 本文執筆専用として使用
- 一つの節につき一回の呼び出し

## 品質管理エージェント（必須プロセス）
- **本文・シナリオを執筆語は1章ごとには必ず以下のエージェントを使用する：**
  1. **novel-readerエージェント**：読者視点でのフィードバック取得
     - 本文（第X節.mdファイル）のみにアクセス
     - プロット、設定資料、章メモ等にはアクセスしない
  2. **novel-consistency-checkerエージェント**：設定資料との整合性チェック
  3. **character-voice-validatorエージェント**：キャラクター音声の一貫性検証
  4. **word-counterエージェント**：文字数確認（目標に不足する場合は書き足し）

## Time MCP
- ファイル編集時に最終編集時刻を記録

## Scenario Wiki / Yousojiten MCP
- 必要に応じて参照資料として使用