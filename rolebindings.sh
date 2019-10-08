rm -rf projectmembers;
oc get projects | while read word1 word2 word3; do echo $word1 >> /tmp/temp.txt; done;
sed -i '1d' /tmp/temp.txt;
echo -en "Name:\nRole:\nUsers:" > /tmp/pattern;
names="/tmp/pattern"
for i in $(cat /tmp/temp.txt);
do
   if [ $i = "NAME" ]
   then
	rm -rf /tmp/temp.txt;
	rm -rf /tmp/pattern /tmp/description;
	exit 0;
   else
	oc describe rolebindings -n $i > /tmp/description;
	grades="/tmp/description";
	echo -en "Members of project $i are \n `grep -f <(tr ',' '\n' < \"${names}\") \"${grades}\"`\n\n" >> projectmembers;
   fi
done;
