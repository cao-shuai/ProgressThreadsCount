echo "please input your progressname:";
read progressname;
echo "progressname is: " $progressname;
while [[ 1 ]]; do
	progresscount=$(busybox pidof ${progressname});
	#echo ${progresscount}
	counts=0;
	for progresspid in ${progresscount};
	do
		#statements
		#echo $progresspid;
		count=$(ps -A -T -p $progresspid |busybox wc -l);
		counts=$((counts+count));
	done
	echo "current thread count is: "$counts
	sleep 1
done