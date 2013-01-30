FILE=$1
WORKING_DIR='/kb/dev_container/modules/docs/build'
echo 'Running diginorm on:' $FILE 

python $WORKING_DIR/khmer/scripts/normalize-by-median.py -k 20 -C 20 -N 4 -x 1e6 -s $FILE.pass1.kh -R $FILE.pass1.report $FILE 

python $WORKING_DIR/khmer/sandbox/filter-below-abund.py $FILE.pass1.kh $FILE.keep 