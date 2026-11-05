# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982ca0 (ContentManager_GetSourceKeyListCount)
Paired Ghidra pseudocode: 10982CA0_ContentManager_GetSourceKeyListCount.c
Window: [0x10982ca0, 0x10982d20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982ca0: 83 ec 20 56 e8 17 18 df ff 8b f0 85 f6 74 65 8b
10982cb0: 44 24 28 6a 10 50 8d 4c 24 1c e8 71 1d fb ff 8d
10982cc0: 4c 24 04 51 83 ec 10 8d 54 24 28 8b cc 52 c7 44
10982cd0: 24 1c 00 00 00 00 c7 44 24 20 00 00 00 00 c7 44
10982ce0: 24 24 00 00 00 00 c7 44 24 28 fc 64 b9 10 e8 cd
10982cf0: 08 fb ff 8b ce e8 b6 7a df ff 8b f0 8b 44 24 04
10982d00: 85 c0 74 09 50 e8 86 61 f9 ff 83 c4 04 8b c6 5e
10982d10: 83 c4 20 c3 33 c0 5e 83 c4 20 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10982ca0 <.text+0x981ca0>:
10982ca0:	83 ec 20                                        	sub    esp,0x20
10982ca3:	56                                              	push   esi
10982ca4:	e8 17 18 df ff                                  	call   0x107744c0
10982ca9:	8b f0                                           	mov    esi,eax
10982cab:	85 f6                                           	test   esi,esi
10982cad:	74 65                                           	je     0x10982d14
10982caf:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10982cb3:	6a 10                                           	push   0x10
10982cb5:	50                                              	push   eax
10982cb6:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10982cba:	e8 71 1d fb ff                                  	call   0x10934a30
10982cbf:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10982cc3:	51                                              	push   ecx
10982cc4:	83 ec 10                                        	sub    esp,0x10
10982cc7:	8d 54 24 28                                     	lea    edx,[esp+0x28]
10982ccb:	8b cc                                           	mov    ecx,esp
10982ccd:	52                                              	push   edx
10982cce:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
10982cd6:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
10982cde:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
10982ce6:	c7 44 24 28 fc 64 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b964fc
10982cee:	e8 cd 08 fb ff                                  	call   0x109335c0
10982cf3:	8b ce                                           	mov    ecx,esi
10982cf5:	e8 b6 7a df ff                                  	call   0x1077a7b0
10982cfa:	8b f0                                           	mov    esi,eax
10982cfc:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10982d00:	85 c0                                           	test   eax,eax
10982d02:	74 09                                           	je     0x10982d0d
10982d04:	50                                              	push   eax
10982d05:	e8 86 61 f9 ff                                  	call   0x10918e90
10982d0a:	83 c4 04                                        	add    esp,0x4
10982d0d:	8b c6                                           	mov    eax,esi
10982d0f:	5e                                              	pop    esi
10982d10:	83 c4 20                                        	add    esp,0x20
10982d13:	c3                                              	ret
10982d14:	33 c0                                           	xor    eax,eax
10982d16:	5e                                              	pop    esi
10982d17:	83 c4 20                                        	add    esp,0x20
10982d1a:	c3                                              	ret
10982d1b:	cc                                              	int3
10982d1c:	cc                                              	int3
10982d1d:	cc                                              	int3
10982d1e:	cc                                              	int3
10982d1f:	cc                                              	int3
