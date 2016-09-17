# ./tp.sh
./tp.sh  192.168.28.56 9999 status | grep 'relay_state":1' &> /dev/null
if [ $? == 0 ]; then
   echo "matched"
   ./tp.sh 192.168.28.56 9999 off
else
   echo "no match"
   ./tp.sh 192.168.28.56 9999 on
fi
