
	.data		

v1:	.half	1
v2:	.half	2
v3:	.half	4
v4:    	.half 	8
v5:	.half	0

	.text

main:			
	lb $s1, v1
	lb $s2, v2
	add $s1, $s1, $s2
	lb $s2, v3
	add $s1, $s1, $s2
	lb $s2, v4
	add $s1, $s1, $s2
	sb $s1, v5


