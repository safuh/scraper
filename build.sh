
set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate
chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
sudo export PATH=$PATH:/usr/local/bin/geckodriver
chmod +x /usr/local/bin/geckodriver