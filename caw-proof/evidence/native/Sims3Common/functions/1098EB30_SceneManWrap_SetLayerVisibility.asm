# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eb30 (SceneManWrap_SetLayerVisibility)
Paired Ghidra pseudocode: 1098EB30_SceneManWrap_SetLayerVisibility.c
Window: [0x1098eb30, 0x1098eba0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eb30: 51 8b 4c 24 0c 83 f9 10 73 5f 56 be 00 00 01 00
1098eb40: d3 e6 f7 c6 00 f0 ff 7f 74 4e 57 8b 7c 24 10 8d
1098eb50: 44 24 14 50 8d 4c 24 0c 51 8b cf e8 f0 f8 b4 ff
1098eb60: 83 7c 24 18 00 74 19 09 74 24 14 8b 54 24 14 8b
1098eb70: 44 24 08 52 50 8b cf e8 f4 f8 b4 ff 5f 5e 59 c3
1098eb80: 8b 44 24 08 f7 d6 21 74 24 14 8b 54 24 14 52 50
1098eb90: 8b cf e8 d9 f8 b4 ff 5f 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098eb30 <.text+0x98db30>:
1098eb30:	51                                              	push   ecx
1098eb31:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098eb35:	83 f9 10                                        	cmp    ecx,0x10
1098eb38:	73 5f                                           	jae    0x1098eb99
1098eb3a:	56                                              	push   esi
1098eb3b:	be 00 00 01 00                                  	mov    esi,0x10000
1098eb40:	d3 e6                                           	shl    esi,cl
1098eb42:	f7 c6 00 f0 ff 7f                               	test   esi,0x7ffff000
1098eb48:	74 4e                                           	je     0x1098eb98
1098eb4a:	57                                              	push   edi
1098eb4b:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098eb4f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1098eb53:	50                                              	push   eax
1098eb54:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098eb58:	51                                              	push   ecx
1098eb59:	8b cf                                           	mov    ecx,edi
1098eb5b:	e8 f0 f8 b4 ff                                  	call   0x104de450
1098eb60:	83 7c 24 18 00                                  	cmp    DWORD PTR [esp+0x18],0x0
1098eb65:	74 19                                           	je     0x1098eb80
1098eb67:	09 74 24 14                                     	or     DWORD PTR [esp+0x14],esi
1098eb6b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098eb6f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098eb73:	52                                              	push   edx
1098eb74:	50                                              	push   eax
1098eb75:	8b cf                                           	mov    ecx,edi
1098eb77:	e8 f4 f8 b4 ff                                  	call   0x104de470
1098eb7c:	5f                                              	pop    edi
1098eb7d:	5e                                              	pop    esi
1098eb7e:	59                                              	pop    ecx
1098eb7f:	c3                                              	ret
1098eb80:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098eb84:	f7 d6                                           	not    esi
1098eb86:	21 74 24 14                                     	and    DWORD PTR [esp+0x14],esi
1098eb8a:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098eb8e:	52                                              	push   edx
1098eb8f:	50                                              	push   eax
1098eb90:	8b cf                                           	mov    ecx,edi
1098eb92:	e8 d9 f8 b4 ff                                  	call   0x104de470
1098eb97:	5f                                              	pop    edi
1098eb98:	5e                                              	pop    esi
1098eb99:	59                                              	pop    ecx
1098eb9a:	c3                                              	ret
1098eb9b:	cc                                              	int3
1098eb9c:	cc                                              	int3
1098eb9d:	cc                                              	int3
1098eb9e:	cc                                              	int3
1098eb9f:	cc                                              	int3
