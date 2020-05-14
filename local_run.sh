# start.sh

export FLASK_APP=wsgi.py
export FLASK_DEBUG=0
export APP_CONFIG_FILE=config.py
export UPLOADED_PHOTOS_DEST=/tmp/images/
export SECRET_KEY="abcd"
gunicorn --bind 0.0.0.0 -w 4 wsgi:app
#uwsgi --http-socket :5000 --plugin python36 --module wsgi:app  --virtualenv  /home/l-8053/py3
#uwsgi myapp.ini
