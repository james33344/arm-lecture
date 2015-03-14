	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}
	
	@ previous = -1
	mov r3, #-1	
	@ result = 1	
	mov r4, #1
	@ i = 0
	mov r5, #0
	@ sum = 0
	mov r6, #0

.loop:
	add r6, r4, r3
	mov r3, r4
	mov r4, r6

	add r5, r5, #1
	cmp r5, r0
	ble .loop
	
	mov r0, r6

	pop {r3, r4, r5, r6, pc}		@EPILOG

	.size fibonacci, .-fibonacci
	.end
