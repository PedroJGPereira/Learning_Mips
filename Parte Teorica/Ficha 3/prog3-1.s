	.data

v1:	.byte	7
v2:	.byte	2
v3:	.byte	3
v4:	.byte	4

	.text
main:
	lb $s1, v1
	lb $s2, v2
	lb $s3, v3
	lb $s4, v4

	div $s1, $s2
	
	mflo $s1
	mfhi $s2
	mult $s3, $s4
	mflo $s3