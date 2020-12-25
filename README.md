# AwspecStudy
Studying is fun for me. awspec.

## Dockerイメージの作成

```
docker build -t awspec .
```

## secrets.yml

テストを実行するIAMユーザーのAWSクレデンシャルを定義します。  

```
region: ap-northeast-1
aws_access_key_id: xxxxxxxx
aws_secret_access_key: xxxxxxxxx
```

## テストスケルトンの生成

```
docker run --rm -it -v "$(pwd)":/home/app -w /home/app awspec awspec generate cloudwatch_event --secrets_path ./spec/secrets.yml
```

## awspecの実行

```
docker run --rm -it -v "$(pwd)":/home/app -w /home/app awspec rake spec 
```

## Reference link

* https://dev.classmethod.jp/articles/use-awspec-to-test-aws-resrouces/

* https://qiita.com/katsuhiko/items/9d83b3121eaa83d06fc1

* https://takeokunn.xyz/blog/post/2020-4-circleci-my-best-practice

* https://cloudpack.media/19412
