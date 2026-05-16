if [ -z "$1" ]; then
  read -p "Enter a username: "
  else
    REPLY="$1"
fi
while grep -q "^${REPLY}:" /etc/passwd ; do
  read -p "The '$REPLY' user exists, please choose another name: "
done
sudo useradd -m -s /bin/bash "$REPLY"
