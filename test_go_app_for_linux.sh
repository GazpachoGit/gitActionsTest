chmod +x ./linux/hello-server

./linux/hello_server &

sleep 3

for i in User1 User2 User3;
do
    echo "$(date): $(curl -s http://localhost:11000/${i})"
done
