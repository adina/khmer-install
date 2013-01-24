FILE=$1
WORKING_DIR='/kb/dev_container/modules/docs/build'

echo 'partitioning' $FILE 

python $WORKING_DIR/khmer/scripts/load-graph.py -k 32 -N 4 -x 4e9 $FILE.part1 $FILE 

python $WORKING_DIR/khmer/scripts/partition-graph.py --threads 8 -s 1e5 $FILE.part1

python $WORKING_DIR/khmer/scripts/merge-partitions.py $FILE.part1

python $WORKING_DIR/khmer/scripts/annotate-partitions.py $FILE.part1 *.keep.below

python $WORKING_DIR/khmer/scripts/extract-partitions.py $FILE.part1 *keep.below.part