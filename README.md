```
 ██████╗██╗      █████╗ ██╗   ██╗██████╗ ███████╗     ██████╗ ██████╗ ██████╗ ███████╗
██╔════╝██║     ██╔══██╗██║   ██║██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
██║     ██║     ███████║██║   ██║██║  ██║█████╗      ██║     ██║   ██║██║  ██║█████╗  
██║     ██║     ██╔══██║██║   ██║██║  ██║██╔══╝      ██║     ██║   ██║██║  ██║██╔══╝  
╚██████╗███████╗██║  ██║╚██████╔╝██████╔╝███████╗    ╚██████╗╚██████╔╝██████╔╝███████╗
 ╚═════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                                                                         
██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗                               
██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝                               
██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗                               
██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║                               
██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║                               
╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝                               
```

# 面倒なことを自動化する
![GitHub Repo stars](https://img.shields.io/github/stars/brennercruvinel/CCPlugins?style=social)
[![Version](https://img.shields.io/badge/version-2.5.2-blue.svg)](https://github.com/brennercruvinel/CCPlugins)
[![Claude Code CLI](https://img.shields.io/badge/for-Claude%20Code%20CLI-purple.svg)](https://docs.anthropic.com/en/docs/claude-code)
[![Tested on](https://img.shields.io/badge/tested%20on-Opus%204%20%26%20Sonnet%204-orange.svg)](https://claude.ai)
[![Also works with](https://img.shields.io/badge/also%20works%20with-Kimi%20K2-1783ff.svg)](https://github.com/MoonshotAI/Kimi-K2)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/brennercruvinel/CCPlugins/blob/main/CONTRIBUTING.md)

## `CCPlugins`とは？

繰り返し発生する開発タスクにかかる時間を週に2〜3時間節約する、Claude Code CLI向けのプロフェッショナルなコマンド群です。

### 課題

😊 Claudeにバグ修正を依頼 → 15個のテストファイルが返ってくる
😤 簡単なリファクタリングを依頼 → クリーンコードに関する長大な論文が返ってくる
🤪 「ボタンを追加してください」と依頼 → UIフレームワーク全体が書き直される
😭 すべての会話で → 「過剰に設計しないシニアエンジニアのように振る舞ってください」と毎回指示

🚧 **活発な開発に関するお知らせ**: CCPluginsは、実際の使用状況に基づいて継続的に進化しています。私たちは各コマンドを徹底的にテストし、ギャップや機会を発見するたびに改良を加えています。これにより、実際の開発者の問題を解決する、実戦で試された本番環境対応のツールを常に提供できることを保証します。

CCPluginsは、エンタープライズレベルの開発ワークフローでClaude Code CLIを拡張する、厳選された24のプロフェッショナルコマンドのセットです。これらのコマンドは、Opus 4およびSonnet 4モデルに最適化された、構造化され予測可能な結果を提供しつつ、Claudeの文脈理解能力を活用します。

## クイックリンク

- [🚀 インストール](#インストール) - 30秒で開始
- [💻 コマンド](#コマンド) - 利用可能な全コマンド一覧
- [🔧 仕組み](#仕組み) - 魔法の裏側を理解する
- [🧠 技術的な注意点](#技術的な注意点) - なぜ会話形式の設計が重要なのか
- [🤝 コントリビュート](#コントリビュート) - より良いものにするために協力する

## インストール

### クイックインストール

**Mac/Linux:**
```bash
curl -sSL https://raw.githubusercontent.com/brennercruvinel/CCPlugins/main/install.sh | bash
```

**Windows/クロスプラットフォーム:**
```bash
python install.py
```

### 手動インストール
```bash
git clone https://github.com/brennercruvinel/CCPlugins.git
cd CCPlugins
python install.py
```

### アンインストール
```bash
# Mac/Linux
./uninstall.sh

# Windows/クロスプラットフォーム
python uninstall.py
```

## コマンド
Claude Code CLIのネイティブ機能に最適化され、強化された検証および改良フェーズを持つ24のプロフェッショナルコマンド。

### 🚀 開発ワークフロー

```bash
/cleanproject                    # gitの安全機能を備えたデバッグ成果物の削除
/commit                          # 分析を伴うスマートなConventional Commits
/format                          # プロジェクトのフォーマッタを自動検出して適用
/scaffold feature-name           # パターンから完全な機能を生成
/test                            # インテリジェントな障害分析付きでテストを実行
/implement url/path/feature      # 検証フェーズ付きであらゆるソースからコードをインポートして適応
/refactor                        # 検証とde-paraマッピングによるインテリジェントなコード再構築
```

### 🛡️ コード品質とセキュリティ

```bash
/review                # マルチエージェント分析（セキュリティ、パフォーマンス、品質、アーキテクチャ）
/security-scan         # 拡張思考と修正追跡による脆弱性分析
/predict-issues        # タイムライン予測付きのプロアクティブな問題検出
/remove-comments       # 明らかなコメントをクリーンアップし、価値のあるドキュメントは保持
/fix-imports           # リファクタリング後の壊れたインポートを修正
/find-todos            # 開発タスクの特定と整理
/create-todos          # 分析結果に基づき、文脈に応じたTODOコメントを追加
/fix-todos             # コンテキストを考慮してTODOの修正をインテリジェントに実装
```

### 🔍 高度な分析

```bash
/understand            # プロジェクト全体のアーキテクチャとパターンを分析
/explain-like-senior   # コンテキスト付きのシニアレベルのコード解説
/contributing          # 完全なコントリビューション準備状況の分析
/make-it-pretty        # 機能的な変更なしに可読性を向上
```

### 📋 セッションとプロジェクト管理

```bash
/session-start         # CLAUDE.mdとの統合による文書化されたセッションの開始
/session-end           # セッションコンテキストの要約と保存
/docs                  # スマートなドキュメント管理と更新
/todos-to-issues       # コードのTODOをGitHubイシューに変換
/undo                  # gitチェックポイント復元による安全なロールバック
```

## 拡張機能

### 🔍 検証と改良
複雑なコマンドには、完全性を保証するための検証フェーズが含まれるようになりました：
```bash
/refactor validate   # 残りの古いパターンを検索し、100%の移行を検証
/implement validate  # 統合の完全性をチェックし、未処理の部分を発見
```

### 🧠 拡張思考
複雑なシナリオのための高度な分析：
- **リファクタリング**: 大規模な変更に対する深いアーキテクチャ分析
- **セキュリティ**: 連鎖分析による高度な脆弱性検出

### 🔗 実用的なコマンド統合
過剰なエンジニアリングなしでの自然なワークフロー提案：
- 大規模な変更後に`/test`を提案
- 論理的なチェックポイントで`/commit`を推奨
- ユーザーコントロールを維持し、自動実行はしない

## 実例

### `/cleanproject`実行前：
```
src/
├── UserService.js
├── UserService.test.js
├── UserService_backup.js    # 古いバージョン
├── debug.log               # デバッグ出力
├── test_temp.js           # 一時的なテスト
└── notes.txt              # 開発者メモ
```

### `/cleanproject`実行後：
```
src/
├── UserService.js          # クリーンな本番コード
└── UserService.test.js     # 実際のテストは保持
```

## 仕組み

### ハイレベルアーキテクチャ

CCPluginsは、洗練されつつもエレガントなアーキテクチャを通じて、Claude Code CLIをインテリジェントな開発アシスタントに変換します：

```
開発者 → /command → Claude Code CLI → コマンド定義 → インテリジェントな実行
    ↑                                                                       ↓
    ←←←←←←←←←←←←←←←←← 明確なフィードバックと結果 ←←←←←←←←←←←←←←←←←←←
```

### 実行フロー

コマンドを入力すると：

1. **コマンド読み込み**: Claudeが`~/.claude/commands/`からマークダウン定義を読み込む
2. **コンテキスト分析**: プロジェクトの構造、技術スタック、現在の状態を分析
3. **インテリジェントな計画**: あなたの特定の状況に基づいた実行戦略を作成
4. **安全な実行**: 自動チェックポイントと検証を伴うアクションを実行
5. **明確なフィードバック**: 結果、次のステップ、および警告を提供

### コアアーキテクチャコンポーネント

**🧠 インテリジェントな指示**
- 一人称の会話形式のデザインが協調的な推論を活性化
- 複雑な意思決定のための戦略的思考セクション（`<think>`）
- ハードコードされた仮定なしのコンテキストに応じた適応

**🔧 ネイティブツール統合**
- **Grep**: コードベース全体での超高速パターンマッチング
- **Glob**: インテリジェントなファイル検出とプロジェクトマッピング
- **Read**: 完全なコンテキスト理解を伴うコンテンツ分析
- **Write**: 自動バックアップ付きの安全なファイル変更
- **TodoWrite**: 進捗追跡とタスク管理
- **Task**: 特殊分析のためのサブエージェントのオーケストレーション

**🛡️ 安全第一の設計**
- 破壊的な操作の前の自動gitチェックポイント
- クロスコンテキストの継続性のためのセッション永続化
- 明確な回復パスを持つロールバック機能
- コミットや生成されたコンテンツにAIの帰属表示なし

**🌐 ユニバーサルな互換性**
- インテリジェントな自動検出によるフレームワーク非依存
- クロスプラットフォームサポート（Windows、Linux、macOS）
- あらゆるプログラミング言語やスタックで動作
- プロジェクトの慣習やパターンに適応

### 高度な機能

**🔄 セッションの継続性**
`/implement`や`/refactor`のようなコマンドは、Claudeセッションをまたいで状態を維持します：
```
# 各コマンドはプロジェクトルートに独自のフォルダを作成します：
refactor/                  # /refactorコマンドによって作成
├── plan.md               # リファクタリングのロードマップ
└── state.json            # 完了した変換

implement/                 # /implementコマンドによって作成
├── plan.md               # 実装の進捗
└── state.json            # セッションの状態と決定

fix-imports/              # /fix-importsコマンドによって作成
├── plan.md               # インポート修正計画
└── state.json            # 解決の進捗

security-scan/            # /security-scanコマンドによって作成
├── plan.md               # 脆弱性と修正
└── state.json            # 修正の進捗

scaffold/                 # /scaffoldコマンドによって作成
├── plan.md               # スキャフォールディング計画
└── state.json            # 作成されたファイルの追跡
```

**🤖 マルチエージェントアーキテクチャ**
複雑なコマンドは、専門のサブエージェントをオーケストレーションします：
- 脆弱性検出のためのセキュリティ分析エージェント
- ボトルネック識別のためのパフォーマンス最適化エージェント
- 設計パターン分析のためのアーキテクチャレビューエージェント
- 保守性評価のためのコード品質エージェント

**📊 パフォーマンス最適化**
- シニア開発者の効率向上のための冗長性の削減
- プロジェクト分析結果のスマートキャッシング
- 大規模コードベースのインクリメンタル処理
- 独立したタスクの並列実行

## 技術的な注意点

### 設計思想

**このアプローチが機能する理由**（Anthropicの研究に基づく）：
- **会話型コマンド**: 「私がお手伝いします...」といった一人称の言葉遣いがClaudeの協調的推論を活性化
- **ビルドに依存しない指示**: ハードコードされたツールがないため、どこでも機能
- **Thinkツールの統合**: 戦略的思考が意思決定を50%以上改善（Anthropic, 2025）
- **ネイティブツールのみ**: 想像上のAPIではなく、Claude Codeの実際の能力を使用

**主要原則:**
- **複雑さよりシンプルさ**: シンプルに始め、必要性が証明された場合にのみ追加
- **コンテキスト認識**: コマンドがあなたのプロジェクトに適応し、その逆ではない
- **安全第一**: 破壊的な操作の前にGitチェックポイントを作成
- **パターン認識**: 思い込みではなく、あなたのコードベースから学習

### 技術アーキテクチャ

**ネイティブツール統合:**
すべてのコマンドはClaude Code CLIのネイティブ機能を活用します：
- 効率的なパターンマッチングのためのGrepツール
- ファイル検出のためのGlobツール
- コンテンツ分析のためのReadツール
- 進捗追跡のためのTodoWrite
- 特殊分析のためのサブエージェント

**安全第一の設計:**
```bash
git add -A
git commit -m "Pre-operation checkpoint" || echo "No changes to commit"
```

**会話型インターフェース:**
コマンドは、命令的なコマンドではなく、「コードを分析します...」といった一人称の協調的な言葉遣いを使用し、モデルのパフォーマンスを向上させる自然なパートナーシップの相互作用を生み出します。

**フレームワーク非依存:**
ハードコードされた仮定なしのインテリジェントな検出により、技術スタック全体で普遍的な互換性を実現します。

### ユーザーコマンドインジケーター
カスタムコマンドは、Claude Code CLIで`(user)`タグと共に表示され、組み込みコマンドと区別されます。これは正常であり、コマンドが正しくインストールされていることを示します。

```
/commit
    Smart Git Commit (user)    ← あなたのカスタムコマンド
/help
    Show help                  ← 組み込みコマンド
```

## パフォーマンス指標

| タスク | 手動時間 | CCPlugins使用時 | 節約時間 |
|---|---|---|---|
| セキュリティ分析 | 45-60分 | 3-5分 | 約50分 |
| アーキテクチャレビュー | 30-45分 | 5-8分 | 約35分 |
| 機能スキャフォールディング | 25-40分 | 2-3分 | 約30分 |
| Gitコミット | 5-10分 | 30秒 | 約9分 |
| コードクリーンアップ | 20-30分 | 1分 | 約25分 |
| インポート修正 | 15-25分 | 1-2分 | 約20分 |
| コードレビュー | 20-30分 | 2-4分 | 約20分 |
| 問題予測 | 60分以上 | 5-10分 | 約50分 |
| TODO解決 | 30-45分 | 3-5分 | 約35分 |
| コード適応 | 40-60分 | 3-5分 | 約45分 |

**合計: プロフェッショナルグレードの分析で週に4-5時間節約**

## 要件

- Claude Code CLI
- Python 3.6+ (インストーラー用)
- Git (バージョン管理コマンド用)

## 高度な使用法

### カスタムコマンドの作成
`~/.claude/commands/`にマークダウンファイルを追加して、独自のコマンドを作成します：

```markdown
# 私のカスタムコマンド

あなたの特定のワークフローをお手伝いします。

[ここにあなたの指示を記述]
```

### 引数の使用
コマンドは`$ARGUMENTS`を介して引数をサポートします：

```bash
/mycommand some-file.js
# $ARGUMENTSには "some-file.js" が含まれます
```

### CI/CD統合
自動化されたワークフローでコマンドを使用します：

```bash
# 品質パイプライン
claude "/security-scan" && claude "/review" && claude "/test"

# プレコミット検証
claude "/format" && claude "/commit"

# 機能開発
claude "/scaffold api-users" && claude "/test"

# 完全なワークフロー
claude "/security-scan" && claude "/create-todos" && claude "/todos-to-issues"

# TODO解決ワークフロー
claude "/find-todos" && claude "/fix-todos" && claude "/test"
```

### 手動ワークフロー統合
開発ルーチンに最適です：

```bash
# 朝のルーチン
claude "/session-start"
claude "/security-scan"

# 開発中
claude "/scaffold user-management"
claude "/review" 
claude "/format"

# 終業時
claude "/commit"
claude "/session-end"
```

## セキュリティとGitの指示

gitと対話するすべてのコマンドには、AIの帰属を防ぐためのセキュリティ指示が含まれています：

**git保護付きのコマンド:**
- `/commit`, `/scaffold`, `/make-it-pretty`, `/cleanproject`, `/fix-imports`, `/review`, `/security-scan`
- `/contributing`, `/todos-to-issues`, `/predict-issues`, `/find-todos`, `/create-todos`, `/fix-todos`

これらのコマンドは決して行いません：
- "Co-authored-by"やAIの署名を追加する
- "Generated with Claude Code"メッセージを含める
- gitの設定や認証情報を変更する
- コミット/イシューにAIの帰属を追加する

必要に応じて、個々のコマンドファイルでこれらの指示を変更できます。

## コントリビュート

開発者の時間節約に役立つコントリビューションを歓迎します。ガイドラインについては[CONTRIBUTING.md](CONTRIBUTING.md)を参照してください。

## ライセンス

MITライセンス - 詳細は[LICENSE](LICENSE)ファイルを参照してください。
*すべての会話で「シニアエンジニアのように振る舞ってください」と入力するのに疲れた開発者によって作られました。*

## コミュニティ

[![Star History Chart](https://api.star-history.com/svg?repos=brennercruvinel/CCPlugins&type=Date)](https://star-history.com/#brennercruvinel/CCPlugins&Date)

---

**最終更新日:** 2025年8月2日 (Anthropic Claude Code CLIドキュメント v2025.08.01に基づく)
