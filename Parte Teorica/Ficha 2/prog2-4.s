
	.data		

v1:	.half	1
v2:	.half	2
v3:	.half	3
v4:    	.half 	4
v5:	.half	5
v6:	.half	6
v7: 	.half	7
v8:	.half	8
v9:	.half	9
	
	.text

main:			
	lh $s0, v1
	lh $s1, v2
	lh $s2, v3
	lh $s3, v4
	lh $s4, v5
	lh $s5, v6
	lh $s6, v7
	lh $s7, v8
	lh $t8, v9

	add $s0, $s0, $s1
	add $s0, $s0, $s2
	add $s0, $s0, $s3
	add $s0, $s0, $s4
	add $s0, $s0, $s5
	add $s0, $s0, $s6
	add $s0, $s0, $s7
	
	add $s0, $s0, $t8
	sh $s0, v10
	
# o valor do somatorio e 45 ,binario, ou 2d em hexadecimal
#foram precisos 2 registos
	