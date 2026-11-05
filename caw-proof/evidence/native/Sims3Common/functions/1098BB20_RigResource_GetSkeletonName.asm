# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098bb20 (RigResource_GetSkeletonName)
Paired Ghidra pseudocode: 1098BB20_RigResource_GetSkeletonName.c
Window: [0x1098bb20, 0x1098bb80) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098bb80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098bb20: 8b 44 24 04 83 ec 10 85 c0 74 07 8b 40 7c 85 c0
1098bb30: 75 05 b8 3a 7b ae 10 56 6a 00 6a ff 50 8d 44 24
1098bb40: 10 50 e8 69 b2 f9 ff 8b 00 83 c4 10 50 ff 15 c4
1098bb50: b6 aa 10 8b 4c 24 0c 8b f0 8b 44 24 04 2b c8 83
1098bb60: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 1f d3 f8
1098bb70: ff 83 c4 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098bb20 <.text+0x98ab20>:
1098bb20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098bb24:	83 ec 10                                        	sub    esp,0x10
1098bb27:	85 c0                                           	test   eax,eax
1098bb29:	74 07                                           	je     0x1098bb32
1098bb2b:	8b 40 7c                                        	mov    eax,DWORD PTR [eax+0x7c]
1098bb2e:	85 c0                                           	test   eax,eax
1098bb30:	75 05                                           	jne    0x1098bb37
1098bb32:	b8 3a 7b ae 10                                  	mov    eax,0x10ae7b3a
1098bb37:	56                                              	push   esi
1098bb38:	6a 00                                           	push   0x0
1098bb3a:	6a ff                                           	push   0xffffffff
1098bb3c:	50                                              	push   eax
1098bb3d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098bb41:	50                                              	push   eax
1098bb42:	e8 69 b2 f9 ff                                  	call   0x10926db0
1098bb47:	8b 00                                           	mov    eax,DWORD PTR [eax]
1098bb49:	83 c4 10                                        	add    esp,0x10
1098bb4c:	50                                              	push   eax
1098bb4d:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098bb53:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098bb57:	8b f0                                           	mov    esi,eax
1098bb59:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098bb5d:	2b c8                                           	sub    ecx,eax
1098bb5f:	83 e1 fe                                        	and    ecx,0xfffffffe
1098bb62:	83 f9 02                                        	cmp    ecx,0x2
1098bb65:	7e 0d                                           	jle    0x1098bb74
1098bb67:	85 c0                                           	test   eax,eax
1098bb69:	74 09                                           	je     0x1098bb74
1098bb6b:	50                                              	push   eax
1098bb6c:	e8 1f d3 f8 ff                                  	call   0x10918e90
1098bb71:	83 c4 04                                        	add    esp,0x4
1098bb74:	8b c6                                           	mov    eax,esi
1098bb76:	5e                                              	pop    esi
1098bb77:	83 c4 10                                        	add    esp,0x10
1098bb7a:	c3                                              	ret
1098bb7b:	cc                                              	int3
1098bb7c:	cc                                              	int3
1098bb7d:	cc                                              	int3
1098bb7e:	cc                                              	int3
1098bb7f:	cc                                              	int3
