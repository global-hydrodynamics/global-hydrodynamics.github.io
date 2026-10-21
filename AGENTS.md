# Codex の作業指針

## 対象と変更範囲

- 東京大学・山崎研究室の Jekyll Web サイトを管理する。
- 依頼された内容を最小限の差分で更新する。既存のページ構造、公開 URL
  (`permalink`)、デザイン、日英表記を維持する。
- Jekyll、依存ライブラリ、テーマの更新は、明示的な依頼がある場合に行う。
- 論文情報、所属、日付、URL は提供資料または一次情報で確認し、不明な値を推測しない。
- 秘密情報や未公開の個人情報をファイル、ログ、コミットに含めない。

## ブランチと Git 操作

- 特段の指示がない限り、固定ブランチ `codex/manage-support` を継続して使う。
- 作業ごとにブランチを増やさない。既存のローカル／リモートブランチを確認し、
  同名ブランチがあれば再利用する。
- クラウドタスクは既に分離されているため、明示的な依頼なしに worktree を作らない。
- 作業前後に `git status` と差分を確認し、ユーザーの未コミット変更を保護する。
- コミットは対象ファイルを明示してステージし、無関係な変更を含めない。
- ユーザーの依頼範囲でコミット・push を行う。`master` への直接 push、
  force push、履歴の書き換え、ブランチ削除は明示的な指示なしに行わない。
- 公開対象への反映は固定ブランチからの Pull Request を基本とし、
  同じブランチの既存 PR があれば再利用する。マージ・本番公開は明示的な依頼に従う。

## 主な編集箇所

| 更新対象 | ファイル |
| --- | --- |
| 英文論文・主要業績 | `_data/publist.yml`、`_includes/pub_highlight.html` |
| 日本語論文 | `_data/publist-J.yml` |
| 論文一覧の表示 | `_pages/publications.md` |
| 現メンバー・共同研究者 | `_data/team_member.csv`、`_data/team_collaborator.csv` |
| 卒業生・過去の訪問者 | `_data/former_student.csv`、`_data/former_visitors.csv` |
| メンバー表示・写真 | `_pages/team.md`、`images/teampic/` |
| 学位論文・受賞 | `_data/student_thesis.csv`、`_data/award.csv` と対応ページ |
| ニュース・イベント | `_pages/home.md`、`_includes/events.html`、`_pages/cmf-*.md` |
| 外部ニュースの埋め込み | `_layouts/homelay.html`（外部 RSS の内容は別管理） |
| 研究・プロジェクト | `_pages/research.md`、`_pages/res_*.md`、各製品ページ |
| 製品一覧・資料 | `_includes/products.html`、`assets/`、`images/` |

## データ編集の注意

- 論文とメンバーはファイルの記載順に表示される。`Sort` 列による自動ソートはない。
  無関係な並べ替えや全体の再整形を行わない。
- YAML のキー名・型を維持する。`dlab` は数値で、1＝研究室主導、0＝共同研究、
  2＝査読付き会議録、3＝書籍・その他。`highlight: 1` の英文論文は主要業績に表示される。
- 主要業績の画像は `images/pubpic/` に配置し、参照先を確認する。
- CSV のヘッダー、列順、UTF-8 と既存 BOM、セル内の HTML・引用符・改行を維持する。
  カンマで単純分割せず CSV パーサーを使う。
- メンバーの `number_desc` は 0～5 で、表示する `description1`～`description5`
  と整合させる。テンプレートでは CSV の文字列として比較される。
- ファイル名・リンク先の大文字小文字を維持する。ページのファイル名だけから
  公開 URL を推測せず、front matter の `permalink` を確認する。

## 検証と報告

- データ変更時は YAML／CSV の構文、列数、必要項目、論文 ID の重複、
  条件付き必須画像、説明数の整合性を確認する。
- ページ変更時はビルド後の内部リンク、画像・PDF、変更ページの表示を確認する。
- 既存の問題と今回導入した問題を区別し、依頼外の問題は勝手に修正しない。
- 現在のリポジトリには `Gemfile` がなく、`Gemfile.lock` の Jekyll は 4.2.1。
  依存関係を更新して解決せず、準備済みの環境を使う。
- このクラウド環境では、次の手順を利用できる。他の環境に同じパスがあるとは仮定しない。

  ```bash
  source /workspace/.cloud-setup/activate
  cd /workspace/global-hydrodynamics.github.io
  BUNDLE_FROZEN=true bundle check
  bundle exec jekyll build --destination /workspace/.cloud-setup/site-output --trace
  ```

- ローカル確認には `bash /workspace/.cloud-setup/start.sh` でサーバーを起動し、
  別シェルで `python3 /workspace/.cloud-setup/smoke.py` を実行する。
  起動済みのサービスを確認し、自分が起動したもの以外は停止しない。
- 生成物・キャッシュをコミットしない。ドキュメントのみの変更は内容と Git 差分を確認し、
  アプリケーションのテストを不必要に追加しない。
- PR には変更理由、対象ページ、情報源、実施した検証、残る問題を記載する。
- GitHub Pages の実際の公開元は Settings → Pages で確認する。
  ローカルビルドの成功だけで本番公開の成功を判断しない。
- 管理用ファイルも公開サイトにコピーされる可能性があるため、機密情報は記載しない。
  公開除外設定の変更は、その変更が依頼範囲に含まれる場合に行う。
