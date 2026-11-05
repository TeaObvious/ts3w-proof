# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f080 (CASPartResourceWrap_GetName)
Paired Ghidra pseudocode: 1097F080_CASPartResourceWrap_GetName.c
Window: [0x1097f080, 0x1097f0d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f0d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f080: 8b 44 24 04 8b 40 38 83 ec 10 56 6a 00 6a ff 50
1097f090: 8d 4c 24 10 51 e8 16 7d fa ff 8b 00 83 c4 10 50
1097f0a0: ff 15 c4 b6 aa 10 8b 54 24 0c 8b f0 8b 44 24 04
1097f0b0: 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8
1097f0c0: cc 9d f9 ff 83 c4 04 8b c6 5e 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
1097f080 <.text+0x97e080>:
1097f080:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f084:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
1097f087:	83 ec 10                                        	sub    esp,0x10
1097f08a:	56                                              	push   esi
1097f08b:	6a 00                                           	push   0x0
1097f08d:	6a ff                                           	push   0xffffffff
1097f08f:	50                                              	push   eax
1097f090:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097f094:	51                                              	push   ecx
1097f095:	e8 16 7d fa ff                                  	call   0x10926db0
1097f09a:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f09c:	83 c4 10                                        	add    esp,0x10
1097f09f:	50                                              	push   eax
1097f0a0:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f0a6:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097f0aa:	8b f0                                           	mov    esi,eax
1097f0ac:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f0b0:	2b d0                                           	sub    edx,eax
1097f0b2:	83 e2 fe                                        	and    edx,0xfffffffe
1097f0b5:	83 fa 02                                        	cmp    edx,0x2
1097f0b8:	7e 0d                                           	jle    0x1097f0c7
1097f0ba:	85 c0                                           	test   eax,eax
1097f0bc:	74 09                                           	je     0x1097f0c7
1097f0be:	50                                              	push   eax
1097f0bf:	e8 cc 9d f9 ff                                  	call   0x10918e90
1097f0c4:	83 c4 04                                        	add    esp,0x4
1097f0c7:	8b c6                                           	mov    eax,esi
1097f0c9:	5e                                              	pop    esi
1097f0ca:	83 c4 10                                        	add    esp,0x10
1097f0cd:	c3                                              	ret
1097f0ce:	cc                                              	int3
1097f0cf:	cc                                              	int3
