# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575f30 (VideoRecorder_GetStatus)
Paired Ghidra pseudocode: 10575F30_VideoRecorder_GetStatus.c
Window: [0x10575f30, 0x10575f80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575f30: e8 3b 72 25 00 85 c0 74 2c 8b 10 8b c8 8b 02 ff
10575f40: d0 83 f8 04 77 1f ff 24 85 68 5f 57 10 b8 01 00
10575f50: 00 00 c3 b8 02 00 00 00 c3 b8 03 00 00 00 c3 b8
10575f60: 04 00 00 00 c3 33 c0 c3 65 5f 57 10 4d 5f 57 10
10575f70: 53 5f 57 10 59 5f 57 10 5f 5f 57 10 cc cc cc cc

LINEAR DISASSEMBLY
10575f30 <.text+0x574f30>:
10575f30:	e8 3b 72 25 00                                  	call   0x107cd170
10575f35:	85 c0                                           	test   eax,eax
10575f37:	74 2c                                           	je     0x10575f65
10575f39:	8b 10                                           	mov    edx,DWORD PTR [eax]
10575f3b:	8b c8                                           	mov    ecx,eax
10575f3d:	8b 02                                           	mov    eax,DWORD PTR [edx]
10575f3f:	ff d0                                           	call   eax
10575f41:	83 f8 04                                        	cmp    eax,0x4
10575f44:	77 1f                                           	ja     0x10575f65
10575f46:	ff 24 85 68 5f 57 10                            	jmp    DWORD PTR [eax*4+0x10575f68]
10575f4d:	b8 01 00 00 00                                  	mov    eax,0x1
10575f52:	c3                                              	ret
10575f53:	b8 02 00 00 00                                  	mov    eax,0x2
10575f58:	c3                                              	ret
10575f59:	b8 03 00 00 00                                  	mov    eax,0x3
10575f5e:	c3                                              	ret
10575f5f:	b8 04 00 00 00                                  	mov    eax,0x4
10575f64:	c3                                              	ret
10575f65:	33 c0                                           	xor    eax,eax
10575f67:	c3                                              	ret
10575f68:	65 5f                                           	gs pop edi
10575f6a:	57                                              	push   edi
10575f6b:	10 4d 5f                                        	adc    BYTE PTR [ebp+0x5f],cl
10575f6e:	57                                              	push   edi
10575f6f:	10 53 5f                                        	adc    BYTE PTR [ebx+0x5f],dl
10575f72:	57                                              	push   edi
10575f73:	10 59 5f                                        	adc    BYTE PTR [ecx+0x5f],bl
10575f76:	57                                              	push   edi
10575f77:	10 5f 5f                                        	adc    BYTE PTR [edi+0x5f],bl
10575f7a:	57                                              	push   edi
10575f7b:	10 cc                                           	adc    ah,cl
10575f7d:	cc                                              	int3
10575f7e:	cc                                              	int3
10575f7f:	cc                                              	int3
