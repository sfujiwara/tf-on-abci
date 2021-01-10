# Distributed TensorFlow on ABCI

## Login to Interactive Node from Your Local Machine

ターミナルを 2 つ立ち上げて、それぞれ次のコマンドを実行します:

```bash
# SSH tunnel
ssh -L 10022:es:22 -l ${ABCI_ACCOUNT} as.abci.ai
```

```bash
# Login to interactive node via SSH tunnel
ssh -p 10022 -l ${ABCI_ACCOUNT} localhost
```

`${ABCI_ACCOUNT}` は自身の ABCI アカウントに置き換えてください。

## Setup on ABCI

開発環境の構築はインタラクティブノードではなく GPU がある計算ノードで行うことをおすすめします。

### Login to Computing Node from Interactive Node

次のコマンドで計算ノードへログインします:

```bash
qrsh -l rt_F=1 -g ${GROUP}
```

`${GROUP}` は自身の ABCI グループに置き換えてください。

### Setup on Computing Node

#### Load Modules

```bash
module load gcc/7.4.0 python/3.8/3.8.2 cuda/10.1/10.1.243 cudnn/7.6/7.6.5 openmpi/2.1.6
```

#### Create Virtual Environment

```bash
# Create virtual environment
python3 -m venv tf
# Activate virtual environment
source tf/bin/activate
```

#### Install Python Modules

```bash
# You can install other modules if needed
pip install -U pip
pip install tensorflow
pip install horovod
```

セットアップが完了したら、次のコマンドで TensorFlow が正しく GPU を認識しているか確認できます:

```bash
python -c "from tensorflow.python.client import device_lib; print(device_lib.list_local_devices())"
```

## Run Examples

セットアップが完了したらサンプルのジョブを投げてみましょう。
ジョブは計算ノードからログアウトしてインタラクティブノードから投げます。

次のコマンドでこのリポジトリをクローンします:

```bash
git clone https://github.com/sfujiwara/tf-on-abci.git
```

### Examples

サンプルの実行方法は各ディレクトリの `README.md` を参照してください:

- [hello-world](hello-world)
- [mnist](mnist)
