# memo
## dockerfileからイメージを作成するコマンド
docker image build

👆　これに　ーt を追加して　名前を設定できる。 -t 名前　：以降は、タグ

docker image build -t my-hoge-image:v2



## 👇このコンテナの中に入ってコマンドを打てる状態に
docker container run -it ubuntu:20.04

### コンテナ内にbashが入っていれば
echo $0
を打つと
/bin/bash
が出てくる。

## 実験


ubuntuというOSのイメージを作成して
そこからコンテナを作成して
その中で、
apt install npm 
をした上で、next.jsのセットをい









## 現在ローカルに存在する Dockerイメージの一覧を表示するコマンド
docker image ls






