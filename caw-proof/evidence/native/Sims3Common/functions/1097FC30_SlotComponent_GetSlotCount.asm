# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fc30 (SlotComponent_GetSlotCount)
Paired Ghidra pseudocode: 1097FC30_SlotComponent_GetSlotCount.c
Window: [0x1097fc30, 0x1097fc80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fc80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fc30: 8b 4c 24 04 85 c9 74 2a 8b 44 24 08 83 f8 05 77
1097fc40: 21 ff 24 85 68 fc 97 10 e9 13 2d dc ff 8b 41 08
1097fc50: c3 e9 aa 2e dc ff 8b 41 18 c3 8b 41 20 c3 8b 41
1097fc60: 28 c3 33 c0 c3 8d 49 00 48 fc 97 10 4d fc 97 10
1097fc70: 51 fc 97 10 56 fc 97 10 5a fc 97 10 5e fc 97 10

LINEAR DISASSEMBLY
1097fc30 <.text+0x97ec30>:
1097fc30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fc34:	85 c9                                           	test   ecx,ecx
1097fc36:	74 2a                                           	je     0x1097fc62
1097fc38:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fc3c:	83 f8 05                                        	cmp    eax,0x5
1097fc3f:	77 21                                           	ja     0x1097fc62
1097fc41:	ff 24 85 68 fc 97 10                            	jmp    DWORD PTR [eax*4+0x1097fc68]
1097fc48:	e9 13 2d dc ff                                  	jmp    0x10742960
1097fc4d:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1097fc50:	c3                                              	ret
1097fc51:	e9 aa 2e dc ff                                  	jmp    0x10742b00
1097fc56:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
1097fc59:	c3                                              	ret
1097fc5a:	8b 41 20                                        	mov    eax,DWORD PTR [ecx+0x20]
1097fc5d:	c3                                              	ret
1097fc5e:	8b 41 28                                        	mov    eax,DWORD PTR [ecx+0x28]
1097fc61:	c3                                              	ret
1097fc62:	33 c0                                           	xor    eax,eax
1097fc64:	c3                                              	ret
1097fc65:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1097fc68:	48                                              	dec    eax
1097fc69:	fc                                              	cld
1097fc6a:	97                                              	xchg   edi,eax
1097fc6b:	10 4d fc                                        	adc    BYTE PTR [ebp-0x4],cl
1097fc6e:	97                                              	xchg   edi,eax
1097fc6f:	10 51 fc                                        	adc    BYTE PTR [ecx-0x4],dl
1097fc72:	97                                              	xchg   edi,eax
1097fc73:	10 56 fc                                        	adc    BYTE PTR [esi-0x4],dl
1097fc76:	97                                              	xchg   edi,eax
1097fc77:	10 5a fc                                        	adc    BYTE PTR [edx-0x4],bl
1097fc7a:	97                                              	xchg   edi,eax
1097fc7b:	10 5e fc                                        	adc    BYTE PTR [esi-0x4],bl
1097fc7e:	97                                              	xchg   edi,eax
1097fc7f:	10                                    	adc    BYTE PTR [ebx-0x74f7dbb4],cl
