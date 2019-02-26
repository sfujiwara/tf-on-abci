# Distributed TensorFlow on ABCI

## Login to Interactive Node from Your Local Machine

Start two terminal on your local machine and run the commands below:

```bash
# SSH tunnel
ssh -L 10022:es:22 -l aca10541ea as.abci.ai
```

```bash
# Login to interactive node via SSH tunnel
ssh -p 10022 -l aca10541ea localhost
```

Note that `aca10451ea` is user name of @sfujiwara.
You have to replace it with your user name.

## Setup on ABCI

We recommend to do your setup on computing node because interactive node does not have GPUs.

For example, you can install tensorflow-gpu on interactive node, but can not install Horovod because tensorflow-gpu can not run without GPUs.

### Login to Computing Node from Interactive Node

Login to computing node with the command below:

```bash
qrsh -l rt_F=1 -g gaa50123
```

Note that `gaa50123` is group of @sfujiwara.
You have to replace it with your group.

### Setup on Computing Node

#### Load Modules

```bash
module load python/3.6/3.6.5 cuda/9.0/9.0.176.4 cudnn/7.2/7.2.1 openmpi/2.1.5
# export LD_LIBRARY_PATH=$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH
```

Note that in python/3.6/3.6.5 module, `python` command call Python 2.
We have to use `python3` command to use Python 3.

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
pip3 install tensorflow-gpu
pip3 install horovod
```

If you successfully installed tensorflow-gpu, you can see available devices with the command below:

```bash
python -c "from tensorflow.python.client import device_lib; print(device_lib.list_local_devices())"
```

## Run Examples

After finishing your setup, you can run the examples.

Note that you should logout from computing node and run them on interactive node.

### Clone Example Repository

```bash
git clone https://github.com/sfujiwara/tf-on-abci.git
cd tf-on-abci/examples
```

### Hello World

```bash
qsub -g gaa50123 hello_world.sh
```
