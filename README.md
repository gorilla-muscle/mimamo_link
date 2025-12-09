# みまもりんく (Flutter版)

離れて暮らす家族（特に高齢の親）の安否と日常の調子を負担少なく緩く共有する見守りアプリ。

<br>

## 概要

みまもりんくは、被見守り側（高齢者）がワンタップで「今日の調子」を送信し、端末の歩数や起床時刻などから自動で要約アラートを生成して家族に通知します。

<br>

## 主な機能

### 被見守り側（高齢者向け）
- **大きなタップエリアと文字サイズ**で操作しやすいUI
- ワンタップで今日の調子を報告
- 家族タイムラインで家族からのメッセージを確認
- 予定・リマインダー管理
- SOSワンタップ緊急通知

### 見守り側（家族向け）
- **情報量多めの設計**で家族の状態を詳しく確認
- 家族タイムラインで被見守り者の状態を確認
- 自動アラート通知
- 予定管理（リマインダー送信）
- 月次レポートの閲覧

<br>

## 技術スタック

- **Flutter** - UIフレームワーク
- **Dart** - プログラミング言語
- **Ruby on Rails** - サーバーサイドフレームワーク
- **Ruby** - プログラミング言語

<br>

## デザイン

- メインカラー: `#FFBA6B` (オレンジ系)
- デザインコンセプト: 全体的に柔らかく親しみやすいデザイン
- 被見守り側: 大きなUI要素、シンプルな操作
- 見守り側: 詳細な情報表示、リッチな機能

<br>

## プロジェクト構造

```
lib/
├── main.dart                             # エントリーポイント
├── constants/
│   └── colors.dart                       # カラー定義
├── models/
│   ├── user_group.dart                   # ユーザーグループモデル
│   └── timeline_item.dart                # タイムラインアイテムモデル
├── screens/
│   ├── onboarding/
│   │   └── onboarding_flow.dart
│   ├── auth/
│   │   ├── sign_in.dart
│   │   ├── email_sign_in_screen.dart
│   │   ├── email_login_screen.dart
│   │   ├── role_select.dart
│   │   ├── family_group_setup.dart
│   │   ├── profile_setup.dart
│   │   └── permissions_screen.dart
│   ├── elderly/
│   │   ├── elderly_home.dart
│   │   └── elderly_timeline.dart
│   ├── family/
│   │   └── family_timeline.dart
│   └── shared/
│       └── settings_screen.dart
└── widgets/
    └── shared/
        ├── header.dart
        ├── navigation_bar.dart
        └── post_creation_modal.dart
```

<br>

## 重要な実装詳細

### 複数グループ対応

ユーザーは複数の家族グループに所属でき、グループごとに役割（見守り側/被見守り側）が異なる場合があります。

```dart
final List<UserGroup> userGroups = [
  UserGroup(
    id: 'yamada',
    name: '山田家',
    emoji: '🏠',
    role: UserRole.family, // 見守り側
  ),
  UserGroup(
    id: 'tanaka',
    name: '田中家',
    emoji: '🏡',
    role: UserRole.elderly, // 被見守り側
  ),
];
```

### グループ切り替え

ヘッダーからグループを切り替えることができ、役割に応じた画面に自動遷移します。

### ナビゲーション

- 被見守り側: ホーム、タイムライン、予定、マイページ
- 見守り側: タイムライン、予定管理、レポート、マイページ

<br>

## 今後の実装予定

以下の機能はスタブまたは未実装です：

- [ ] アラート詳細画面
- [ ] リマインダー管理画面（被見守り側・見守り側）
- [ ] レポート表示画面
- [ ] SOS画面の詳細実装
- [ ] プロフィール編集画面
- [ ] 家族グループ管理画面
- [ ] アプリ設定画面
- [ ] ヘルプ・お問い合わせ画面
- [ ] 利用規約・プライバシーポリシー画面
- [ ] Supabaseとの統合（バックエンド連携）
- [ ] プッシュ通知機能
- [ ] ヘルスケアデータ連携
- [ ] 位置情報機能
