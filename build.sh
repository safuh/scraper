
set -o errexit
pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate
chmod +x geckodriver
mv geckodriver ./geckodriver
export PATH=$PATH:geckodriver
