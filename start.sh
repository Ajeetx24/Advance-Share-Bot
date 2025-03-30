if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ajeetx24/Advance-Share-Bot /Advance-Share-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-Share-Bot
fi
cd /Advance-Share-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
