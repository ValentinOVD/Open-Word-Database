export d=`cat $1.po | grep -m 1 -n $2 | cut -d: -f "1"`
sed -n "`expr $d + 1`"p $1.po | cut -d\" -f "2"
