echo "Cloning Repo...."
git clone https://github.com/Jitendra7653/File-Store-bot /File-Store-bot
cd /File-Store-bot
echo "Starting Bot.... Please Wait."
gunicorn app:app & python bot.py
