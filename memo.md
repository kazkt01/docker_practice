# memo



11b46c8c100a   my-net

my-ub

docker container run -itd --name my-ubuntu-2  --network my-net my-ub


docker container run -d --name my-nginx-2 nginx

 docker container run -d --name my-nginx-3 --network my-net nginx



                "IPv4Address": "172.22.0.3/16",


                


resetコマンドでコマンドラインを綺麗にできる。




# dockerとストレージについて
コンテナレイヤーは、イメージレイヤーと違って変更は、できるがコンテナを起動した際にそのホスト内でしか稼働できない
これを解決するのが
ボリュームとバイマウントとという方法だ。

# 新しいボリューム領域を作成する
docker volume create ボリューム名

# ボリューム領域一覧を表示する
docker volume ls

# 指定したボリューム領域の詳細情報を表示する
docker volume inspect ボリューム名

# 指定したボリューム領域を削除する
docker volume rm ボリューム名


<!-- ボリュームを永続化する方法。 -->
#　ボリュームに接続しながらコンテナを起動する。


docker container run -v ボリューム名:コンテナ内絶対パス　イメージ

# dstは、デスティネーションの略
docker container run -mount type=volume src=ボリューム名,dst=コンテナ内絶対パス　イメージ















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


## COPYとは？
ファイルやディレクトリ単位でホストからコンテ内にコピーできるとのこと。

## ビルドコンテキストとは？
コンテキスト　=  文脈

Docker CLI 　←クライアント
↓
REST API ←コマンドラインとdockerデーモンで会話するための層
↓
サーバー（docker デーモン）←コンテナを作成したりイメージを作ったりの機能を持ってる。

一応三層構造になっている理由としては、
例えば、クライアントが手元にあてサーバがクラウドにあるとかで動かせるようにするために分離してる。
REST API って何者？？

docker buildする際には、docker CLI から　dockerfileとコンテキストを与える必要がある。

コンテキストとは、シンプルに.や./のディレクトリ情報

## txtファイルとは？
markdownだと装飾ができるがtxtファイルだと装飾がなく
単なる文字
どんな環境でも読めるただの文字とのこと。
主な、用途としては、メモ、ログ、設定ファイルなど
そのまま文字だけが表示される
確かに、ログとか格納するなら装飾なしで見づらくなることはなさそうだな。





## 実験
ubuntuというOSのイメージを作成して
そこからコンテナを作成して
その中で、
apt install npm 
をした上で、next.jsのセットをい









## 現在ローカルに存在する Dockerイメージの一覧を表示するコマンド
docker image ls






