## Stuff

The containered environment contains Pytorch/Tensorflow (cuda), huggingface transformers, and a variety of other packages you'd likely need for machine learning workflows.

For the runtime password, please run in python: ``` from notebook.auth import passwd
print(passwd()) ```

Afterwards, you should be able to run the image with jupyter with ex: ``` docker run -p 8888:8888 \
  -e JUPYTER_PASSWORD_HASH='sha1:2f4ab3c4d8a1:7dbf3a2452c3e9b4fbc4d1f3d44a6371ad4d9a8f' \
  my-jupyter-image ```

To use TensorFlow, please change line 8 in dockerfile to "COPY requirements-tensorflow.txt ." and please change line 11 to say "RUN pip install --no-cache-dir -r requirements-tensorflow.txt"
