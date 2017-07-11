# README

## Versions

ruby 2.4.1
Rails 5.1.2
mongo 2.4.2
mongoid 6.2.0

## 作成方法
- プロジェクトの作成
```
$ rails new mongo-api --api --skip-active-record --skip-bundle
```

- Gemfileにmongoidを追加, bundle install


- mongoidのconfigファイルを作成
```
$ rails g mongoid:config
```

- modelの作成
```
$ rails g model plan title --timestamps
```
