## upload-video-with-activestorage-example



### how to install


```
rails active_storage:install
rails g scaffold video title:string content:text
```


```
EDITOR=vim rails credentials:edit
aws:
 access_key_id: #ここに自分のアクセスキーIDをコピペ
 secret_access_key: #ここに自分のシークレットアクセスキーをコピペ
rails credentials:show
```

```
config/storage.yml
amazon:
  # 以下3行はそのまま
  service: S3
  access_key_id: <%= Rails.application.credentials.dig(:aws, :access_key_id) %>
  secret_access_key: <%= Rails.application.credentials.dig(:aws, :secret_access_key) %>
  # 以下２行は変える
  region: ap-northeast-1 #東京
  bucket: my-rails-app-first-bucket #自分で作成したS3のバケットの名前
```

```
# config/environments/production.rb #実行する環境に合わせて
config.active_storage.service = :amazon
```


### reference

https://qiita.com/hmmrjn/items/479c9e9ce82771f1b6d7
https://github.com/negabaro/upload-video-with-activestorage-example

https://qiita.com/HashibamiAkira/items/3046a0fc91ded48ccc5f
https://s-h-gamelinks.github.io/MyFirstRails/railstube/