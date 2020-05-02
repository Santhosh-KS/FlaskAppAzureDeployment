# start.sh

#export FLASK_APP=wsgi.py
#export FLASK_DEBUG=0
#export APP_CONFIG_FILE=config.py
#export UPLOADED_PHOTOS_DEST=/tmp/images/
#export SECRET_KEY="abcd"
##waitress-serve --call 'flask_pytorch_web_app:create_app'
echo "Doing custom install"
pip install wheel gunicorn
python setup.py bdist_wheel
cd dist
pip install --no-cache-dir flask_pytorch_web_app-0.0.0-py3-none-any.whl
cd -
echo "Done custom install"
gunicorn --bind 0.0.0.0:8000 -w 4 wsgi:app
#flask run
