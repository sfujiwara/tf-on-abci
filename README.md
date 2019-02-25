# Distributed TensorFlow on ABCI

## Login

```bash
ssh -L 10022:es:22 -l aca10541ea as.abci.ai
ssh -p 10022 -l aca10541ea localhost
```

## Load Modules

```bash
module load python/3.6/3.6.5
module load cuda/9.2/9.2.88.1
module load cudnn/7.4/7.4.2
```

Note that in python/3.6/3.6.5 module, `python` command call Python 2.
We have to use `python3` command to use Python 3.

## Create Virtual Environment

```bash
# Create virtual environment
python3 -m venv tf
# Activate virtual environment
source tf/bin/activate
```

## Run Examples

```bash
cd examples
```

### Hello World

```bash
qsub -g gaa50123 hello_world.sh
```