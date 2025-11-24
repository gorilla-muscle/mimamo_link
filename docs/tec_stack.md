## Mobile（Flutter）
- フレームワーク：Flutter（Stable）
  - https://flutter.dev/?utm_source=chatgpt.com
- 状態管理：Riverpod（推奨）または Bloc
  - https://riverpod.dev/docs/introduction/getting_started?utm_source=chatgpt.com
- ルーティング：go_router（宣言的・ディープリンク対応）
  - https://pub.dev/documentation/go_router/latest/?utm_source=chatgpt.com
- ローカル永続化：Hive（KV型・軽量）／必要に応じて sqflite（RDB）
  - https://pub.dev/documentation/hive/latest/?utm_source=chatgpt.com
- パーミッション：permission_handler
  - https://pub.dev/packages/permission_handler?utm_source=chatgpt.com
- バックグラウンド処理（未送信キュー/定期同期）：workmanager
  - https://pub.dev/packages/workmanager?utm_source=chatgpt.com
- 通知（PUSH）：FlutterFire + Firebase Cloud Messaging（iOSはAPNs連携前提）
  - https://firebase.flutter.dev/docs/messaging/overview/?utm_source=chatgpt.com
- 課金（IAP）：in_app_purchase（App Store / Google Play 両対応）
  - https://docs.flutter.dev/resources/in-app-purchases-overview?utm_source=chatgpt.com
- 計測/品質：Firebase Analytics／Crashlytics
  - https://firebase.flutter.dev/docs/analytics/overview/?utm_source=chatgpt.com

## Backend（Rails）
- アーキテクチャ：Rails 7/8 API-only（JSON専用・軽量ミドルウェア）
  - https://guides.rubyonrails.org/api_app.html?utm_source=chatgpt.com
- DB：PostgreSQL（本番/検証ともに）
- 認証：Devise + devise-jwt（トークン認証）
  - https://github.com/waiting-for-dev/devise-jwt?utm_source=chatgpt.com
- ファイル/画像（レポート等の添付・将来の写真共有）：Active Storage（S3等に接続可）
  - https://guides.rubyonrails.org/active_storage_overview.html?utm_source=chatgpt.com
- 非同期ジョブ（通知集約/レポート生成）：Sidekiq + Redis
  - https://sidekiq.org/?utm_source=chatgpt.com
- デプロイ候補（個人運用しやすさ優先）：
  - Fly.io（Rails公式ドキュメント完備）
    - https://fly.io/docs/rails/?utm_source=chatgpt.com
  - Render（Rails 6–8 ガイド/Sidekiqガイドあり）
    - https://render.com/docs/deploy-rails-6-7?utm_source=chatgpt.com

## CI/CD（最小）
- Github Actions：公式Actionsで Ruby/Flutter環境を用意
  - Lint・テスト・ビルドを自動化