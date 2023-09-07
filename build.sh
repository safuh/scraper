
set -o errexit
pip install -r requirements.txt
pip install webdriver-manager
python manage.py collectstatic --no-input
python manage.py migrate
chmod +x geckodriver
export PATH=$PATH:geckodriver
chmod +x firefox-esr
export PATH=$PATH:firefox-esr
export GH_TOKEN = "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"