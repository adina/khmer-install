FILE=$1
WORKING_DIR='/kb/dev_container/modules/docs/build'
echo 'assembling' $FILE 

#for K in `seq 33 2 35`;
#do
#$WORKING_DIR/velvet/velveth $FILE.ass.$K $K -fasta $FILE
#$WORKING_DIR/velvet/velvetg $FILE.ass.$K -read_trkg yes -exp_cov auto -cov_cutoff auto -scaffolding no
#done

#cat $FILE.ass.*/contigs.fa >> all-contigs.fa
#python $WORKING_DIR/khmer/sandbox/multi-rename.py all-contigs.fa > all-contigs.renamed.fa
#cd-hit-est -i all-contigs.renamed.fa -o all-contigs.renamed.fa.out -c 0.99

toAmos -s all-contigs.renamed.fa.out -o all-contigs.afg
minimus2 all-contigs