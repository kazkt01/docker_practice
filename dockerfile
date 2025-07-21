# 👇実際これだけでもbuildは、できる。
FROM ubuntu:20.04

# shellで実行したいコマンドをRUNで指定できる。
# dockerfileを実行してイメージを作成する際にapt updateを実行してくれるという指定
# つまり、apt updateを実行した状態のイメージを手にいれることができる。
RUN apt update

# ーyは、なんなのか？　これシンプルに --yesの略
RUN apt install -y curl 





