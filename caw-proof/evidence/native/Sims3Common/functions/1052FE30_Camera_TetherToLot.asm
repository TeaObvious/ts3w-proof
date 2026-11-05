# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fe30 (Camera_TetherToLot)
Paired Ghidra pseudocode: 1052FE30_Camera_TetherToLot.c
Window: [0x1052fe30, 0x1052fe90) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fe90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fe30: e8 fb c7 22 00 85 c0 74 4c 8b c8 e8 40 7c 40 00
1052fe40: 85 c0 74 41 8b c8 e8 05 cb 22 00 85 c0 74 36 8b
1052fe50: 10 56 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 8b f0
1052fe60: 85 f6 74 20 8b 4c 24 0c 8b 54 24 08 51 52 8b ce
1052fe70: e8 9b 7d 23 00 80 7c 24 10 00 74 08 8b ce 5e e9
1052fe80: cc 2a 23 00 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fe30 <.text+0x52ee30>:
1052fe30:	e8 fb c7 22 00                                  	call   0x1075c630
1052fe35:	85 c0                                           	test   eax,eax
1052fe37:	74 4c                                           	je     0x1052fe85
1052fe39:	8b c8                                           	mov    ecx,eax
1052fe3b:	e8 40 7c 40 00                                  	call   0x10937a80
1052fe40:	85 c0                                           	test   eax,eax
1052fe42:	74 41                                           	je     0x1052fe85
1052fe44:	8b c8                                           	mov    ecx,eax
1052fe46:	e8 05 cb 22 00                                  	call   0x1075c950
1052fe4b:	85 c0                                           	test   eax,eax
1052fe4d:	74 36                                           	je     0x1052fe85
1052fe4f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052fe51:	56                                              	push   esi
1052fe52:	8b c8                                           	mov    ecx,eax
1052fe54:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052fe57:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fe5c:	ff d0                                           	call   eax
1052fe5e:	8b f0                                           	mov    esi,eax
1052fe60:	85 f6                                           	test   esi,esi
1052fe62:	74 20                                           	je     0x1052fe84
1052fe64:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1052fe68:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1052fe6c:	51                                              	push   ecx
1052fe6d:	52                                              	push   edx
1052fe6e:	8b ce                                           	mov    ecx,esi
1052fe70:	e8 9b 7d 23 00                                  	call   0x10767c10
1052fe75:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
1052fe7a:	74 08                                           	je     0x1052fe84
1052fe7c:	8b ce                                           	mov    ecx,esi
1052fe7e:	5e                                              	pop    esi
1052fe7f:	e9 cc 2a 23 00                                  	jmp    0x10762950
1052fe84:	5e                                              	pop    esi
1052fe85:	c3                                              	ret
1052fe86:	cc                                              	int3
1052fe87:	cc                                              	int3
1052fe88:	cc                                              	int3
1052fe89:	cc                                              	int3
1052fe8a:	cc                                              	int3
1052fe8b:	cc                                              	int3
1052fe8c:	cc                                              	int3
1052fe8d:	cc                                              	int3
1052fe8e:	cc                                              	int3
1052fe8f:	cc                                              	int3
