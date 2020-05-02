echo "Running install script"
pip install wheel gunicorn
python setup.py bdist_wheel
cd dist
pip install --no-cache-dir flask_pytorch_web_app-0.0.0-py3-none-any.whl
cd -
mkdir -p /tmp/images
echo "Done installation "
