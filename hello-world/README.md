# Hello World

ABCI ではジョブを投げるためにジョブスクリプトと呼ばれるシェルスクリプトと、実際に実行したい Python のコードを用意します。
このサンプルでは [`bin/hello_world.sh`](bin/hello_world) がジョブスクリプトで [`hello_world.py`](hello_world.py) が実行したい Python コードです。

ジョブの投げ方に関する詳細は、公式ドキュメントの[ジョブ実行環境](https://docs.abci.ai/ja/03/)を参照してください。

## Submit job

次のコマンドでジョブを投げます:

```shell script
$ qsub -g ${GROUP} bin/hello_world.sh
```

ジョブを投げたら、次のコマンドでジョブのステータスを確認することができます:

```shell script
$ qstat
```

## Logs

ログは [`log`](log) ディレクトリに次のような名前で保存されます:

- 標準入力: `JOB_NAME.oJOB_ID`
- 標準エラー: `JOB_NAME.eJOB_ID`
