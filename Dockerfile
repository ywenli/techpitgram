FROM ruby:2.5.3
#rubyのバージョン指定
RUN gem install rails
#gemのインストール
RUN apt-get update && apt-get install -y nodejs mysql-client
#パッケージのアップデートインストール