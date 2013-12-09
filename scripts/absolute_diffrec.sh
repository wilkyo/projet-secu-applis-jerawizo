#/bin/bash
if [ $# -lt 3 ]; then echo "Nb params < 3"; exit 1; fi
if [ ! -z $4 ]
then
	SCRIPT_PATH=$4
else
	SCRIPT_PATH=$(pwd)
fi
echo "From "$1
#echo "And "$2
#echo "Out: "$3
if [ ! -d $3 ]
then
	mkdir $3
fi
cd $1
for i in $(ls)
do
	if [ -d $i ]
	then
		$SCRIPT_PATH/absolute_diffrec.sh $1/$i $2/$i $3/$i $SCRIPT_PATH
	else
		#if [ $i = ".smali" ]
		#then
		diff -u $1/$i $2/$i > $3/$i
		if [ ! -s $3/$i ]
		then
			rm $3/$i
		fi
		#fi
	fi
done
nbFichiers=$(ls -a $3 | sed -e "/\.$/d" | wc -l)
if [ $nbFichiers -eq 0 ]
then
	echo "rm "$3
	rmdir $3
fi
cd ..
