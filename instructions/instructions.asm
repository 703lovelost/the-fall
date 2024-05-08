asect 0x00
push r3

main:
	pop r3
	ldi r0, bitRct_0
	ld r0, r0
	st r0, r0
	
	ldi r0, bitRct_1
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop1_0
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop1_1
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop2_0
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop2_1
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop3_0
	ld r0, r0
	st r0, r0
	
	ldi r0, bitTop3_1
	ld r0, r0
	st r0, r0
	
	jsr cmpTop1
	
cmpTop1:
	pop r3
	ldi r0, bitTop1_0
	ld r0, r0
	
	ldi r2, bitTop1_1
	ld r2, r2
	
	ldi r1, bitRct_0
	ld r1, r1

	
	#if1--------------------------------------------
	if
		cmp r0, r1
	is mi
		jsr replaceTop1
	else
		#if2----------------------------------------
		if
			cmp r0, r1
		is z
			ldi r1, bitRct_1
			ld r1, r1
			
			#if3------------------------------------
			if
				cmp r2, r1
			is mi
				jsr replaceTop1
			else
				#if4--------------------------------
				if
					cmp r2, r1
				is z
					jsr main
				else
					jsr cmpTop2
				fi
				#if4--------------------------------
			fi
			#if3------------------------------------
		else
			jsr cmpTop2
		fi
		#if2----------------------------------------		
	fi
	#if1--------------------------------------------
	
cmpTop2:
	pop r3
	ldi r0, bitTop2_0
	ld r0, r0
	
	ldi r2, bitTop2_1
	ld r2, r2
	
	ldi r1, bitRct_0
	ld r1, r1
	
	#if1--------------------------------------------
	if
		cmp r0, r1
	is mi
		jsr replaceTop2
	else
		#if2----------------------------------------
		if
			cmp r0, r1
		is z
			ldi r1, bitRct_1
			ld r1, r1
			
			#if3------------------------------------
			if
				cmp r2, r1
			is mi
				jsr replaceTop2
			else
				#if4--------------------------------
				if
					cmp r2, r1
				is z
					jsr main
				else
					jsr cmpTop3
				fi
				#if4--------------------------------
			fi
			#if3------------------------------------
		else
			jsr cmpTop3
		fi
		#if2----------------------------------------		
	fi
	#if1--------------------------------------------
	
cmpTop3:
	pop r3
	ldi r0, bitTop3_0
	ld r0, r0
	
	ldi r2, bitTop3_1
	ld r2, r2
	
	ldi r1, bitRct_0
	ld r1, r1
	
	#if1--------------------------------------------
	if
		cmp r0, r1
	is mi
		jsr replaceTop3
	else
		#if2----------------------------------------
		if
			cmp r0, r1
		is z
			ldi r1, bitRct_1
			ld r1, r1
			
			#if3------------------------------------
			if
				cmp r2, r1
			is mi
				jsr replaceTop3
			else
				#if4--------------------------------
				if
					cmp r2, r1
				is z
					jsr main
				fi
				#if4--------------------------------
			fi
			#if3------------------------------------
		else
			jsr main
		fi
		#if2----------------------------------------		
	fi
	#if1--------------------------------------------
	
replaceTop1:
	pop r3
	
	ldi r0, bitTop2_0
	ld r0, r0
	ldi r1, bitTop3_0
	st r1, r0
	
	ldi r0, bitTop2_1
	ld r0, r0
	ldi r1, bitTop3_1
	st r1, r0
	
	ldi r0, bitTop1_0
	ld r0, r0
	ldi r1, bitTop2_0
	st r1, r0
	
	ldi r0, bitTop1_1
	ld r0, r0
	ldi r1, bitTop2_1
	st r1, r0
	
	ldi r0, bitRct_0
	ld r0, r0
	ldi r1, bitTop1_0
	st r1, r0
	
	ldi r0, bitRct_1
	ld r0, r0
	ldi r1, bitTop1_1
	st r1, r0
	
	jsr main
	
replaceTop2:
	pop r3
	
	ldi r0, bitTop2_0
	ld r0, r0
	ldi r1, bitTop3_0
	st r1, r0
	
	ldi r0, bitTop2_1
	ld r0, r0
	ldi r1, bitTop3_1
	st r1, r0
	
	ldi r0, bitRct_0
	ld r0, r0
	ldi r1, bitTop2_0
	st r1, r0
	
	ldi r0, bitRct_1
	ld r0, r0
	ldi r1, bitTop2_1
	st r1, r0
	
	jsr main	

replaceTop3:
	pop r3
	
	ldi r0, bitRct_0
	ld r0, r0
	ldi r1, bitTop3_0
	st r1, r0
	
	ldi r0, bitRct_1
	ld r0, r0
	ldi r1, bitTop3_1
	st r1, r0
	
	jsr main	
	
jsr main

asect 0xF4
bitTop1_0: ds 1
bitTop1_1: ds 1

bitTop2_0: ds 1
bitTop2_1: ds 1

bitTop3_0: ds 1
bitTop3_1: ds 1

bitRct_0: ds 1
bitRct_1: ds 1

end
