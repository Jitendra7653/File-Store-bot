echo "Cloning Repo...."
git clone https://github.com/Jitendra7653/File-Store /File-Store
cd /File-Store
echo "Starting Bot.... Please Wait."
gunicorn app:app & python3 bot.py
