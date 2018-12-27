if [[ -z $1 ]]
then
	echo "Input file missing"
	exit -1
fi

convert $1 \
	-quality 50% \
	-resize 20% \
	-label "2018 Radoslaw Smigielski. All rights reserved." \
	-set comment "2018 Radoslaw Smigielski. All rights reserved." \
	-pointsize 20 \
	-draw "
		gravity southeast \
		fill white text 20,10 '© 2018 Radoslaw Smigielski. All rights reserved.'
	" \
	/tmp/2_$(basename $1)

# identify -verbose \
#	/tmp/$(basename $1)
