wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
chmod +x cloud_sql_proxy
./cloud_sql_proxy -instances=django-example-244011:us-east1:django-example=tcp:3306 &

pip install -r requirements.txt
python manage.py migrate

