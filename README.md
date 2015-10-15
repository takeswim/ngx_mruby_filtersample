# ngx_mruby_filtersample
結果にフィルタをかける処理をmruby_output_filterで実装しようとしたところ、上手くfilter処理がかからない。
試行錯誤をしつつ空コード(何も処理しない)を入れたところで明らかにmruby_output_filterとmruby_output_filter_codeで動作が違っている。

ログを見たところmruby_output_filterで実装した方に、以下のエラーが発生している。
```
2015/10/15 15:28:12 [error] 20918#0: *28 failed to read body. NGX_AGAIN ngx_http_mruby_body_filter_handler:1834 
while sending to client, client: 127.0.0.1, server: , request: "GET / HTTP/1.1", upstream: "http://127.0.0.1:777
9/", host: "127.0.0.1:19999"
```
NGX_AGAINはデータが揃ってない状態なので、それでbodyが読めていない？
