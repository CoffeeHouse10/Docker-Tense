## Stuff

The containered environment contains Pytorch/Tensorflow (cuda), huggingface transformers, and a variety of other packages you'd likely need for machine learning workflows.

To use TensorFlow, please change line 8 in dockerfile to "COPY requirements-tensorflow.txt ." and please change line 11 to say "RUN pip install --no-cache-dir -r requirements-tensorflow.txt"
