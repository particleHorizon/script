src=(`ls $1`)
dest=(`cat filename.txt`)
count=`ls $1|wc -l`

cd $1
for (( i=0; i<$count; i++ ))
do
  d=`echo ${dest[$i]}|sed -e 's/^[ \t]*//g'`
  mv ${src[$i]} $d
  echo 'rename '$src' '$dest
done
