# Codex の作業指針

## 対象と変更範囲

- 東京大学・山崎研究室の Jekyll Web サイトを管理する。
- 依頼された内容を最小限の差分で更新する。既存のページ構造、公開 URL
  (`permalink`)、デザイン、日英表記を維持する。
- Jekyll、依存ライブラリ、テーマの更新は、明示的な依頼がある場合に行う。
- 論文情報、所属、日付、URL は提供資料または一次情報で確認し、不明な値を推測しない。
- 秘密情報や未公開の個人情報をファイル、ログ、コミットに含めない。

## ブランチと Git 操作

- 特別な指示がない限り、更新作業は `master` ブランチで行い、検証後に
  `origin/master` へ直接コミット・push して反映する。Pull Request は原則不要。
- この方針を通常運用とし、以前の `codex/manage-support` 固定ブランチ運用には戻さない。
  ユーザーが明示的に別ブランチやレビューを求めた場合のみ、その指示に従う。
- 作業前に最新の `origin/master` を取得し、リモートとの差分と現在のブランチを確認する。
  他者の変更が進んでいる場合は取り込んでから作業し、上書きしない。
- クラウドタスクは既に分離されているため、明示的な依頼なしに worktree を作らない。
- 作業前後に `git status` と差分を確認し、ユーザーの未コミット変更を保護する。
- コミットは対象ファイルを明示してステージし、無関係な変更を含めない。
- **コミット前（必須）**：`ruby scripts/check_data_syntax.rb` を実行し、`_data/` 内の
  全 YAML/CSV ファイルを実際のパーサーで検証する。正規表現や目視確認のみで
  構文検証を代替しない。データを編集していない場合も、コミット前に実行する。
- 併せて変更内容に応じたデータ整合性チェックを行い、実行可能な環境では
  Jekyll ビルドをコミット前に実施する。**検証が失敗した場合はコミットも push も行わない。**
  検証手段を実行できない場合も、検証済みとみなさず、原因を報告して作業を止める。
- ユーザーの依頼範囲でコミット・push を行う。`git push --force`、履歴の書き換え、
  ブランチ削除は行わない。直接 push が保護設定や環境で拒否された場合は報告し、
  勝手に保護を解除しない。
- 公開後に問題が見つかった場合は、該当コミットを特定して `git revert` による
  復旧案を提示する。ユーザーの依頼なしに本番変更をロールバックしない。
- サイト全体のデザインや構造の大規模変更は、実施前にユーザーへ相談する。

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

## コミット前の必須ゲート

1. `git diff --check` で空白・差分異常を確認する。
2. `ruby scripts/check_data_syntax.rb` を実行する（YAML構文とCSV列数の検査）。
3. 変更したデータの重複ID、必須項目、リンク、画像参照などを確認する。
4. 実行可能ならJekyllビルドを実行する。ビルド未実施は明確に報告する。
5. すべての**必須**検証に成功した場合のみ、対象ファイルをステージしてコミット・pushする。
   GitHub API経由で直接ファイル更新する場合も同じゲートを省略しない。

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
- 更新完了時には変更理由、対象ページ、情報源、実施した検証、コミット SHA、残る問題を報告する。
- GitHub Pages の実際の公開元は Settings → Pages で確認する。
  ローカルビルドの成功だけで本番公開の成功を判断しない。
- 管理用ファイルも公開サイトにコピーされる可能性があるため、機密情報は記載しない。
  公開除外設定の変更は、その変更が依頼範囲に含まれる場合に行う。
