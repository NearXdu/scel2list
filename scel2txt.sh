if [ $# != 1 ] ; then 
	echo "USAGE: $0 Aera [beijing]" 
	exit
fi
INPUT=$1".scel"
OUTPUT=$1".txt"
echo ${INPUT}
python scel2mmseg.py ${INPUT} ${OUTPUT}
RESULT=$1".list"
awk 'FNR%2==1{print $1}' ${OUTPUT} > output/${RESULT}
rm ${OUTPUT}

