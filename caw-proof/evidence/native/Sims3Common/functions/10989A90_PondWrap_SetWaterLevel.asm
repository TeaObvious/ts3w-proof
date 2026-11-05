# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989a90 (PondWrap_SetWaterLevel)
Paired Ghidra pseudocode: 10989A90_PondWrap_SetWaterLevel.c
Window: [0x10989a90, 0x10989ad0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989a90: 51 d9 44 24 14 8b 54 24 0c 8d 44 24 03 50 51 8b
10989aa0: 4c 24 18 d9 1c 24 51 8b 4c 24 14 52 c6 44 24 13
10989ab0: 00 e8 ca 20 7a ff 8b 54 24 18 33 c9 38 4c 24 03
10989ac0: 0f 95 c1 89 0a 33 c9 84 c0 0f 95 c1 8b c1 59 c3

LINEAR DISASSEMBLY
10989a90 <.text+0x988a90>:
10989a90:	51                                              	push   ecx
10989a91:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10989a95:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10989a99:	8d 44 24 03                                     	lea    eax,[esp+0x3]
10989a9d:	50                                              	push   eax
10989a9e:	51                                              	push   ecx
10989a9f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10989aa3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10989aa6:	51                                              	push   ecx
10989aa7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10989aab:	52                                              	push   edx
10989aac:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
10989ab1:	e8 ca 20 7a ff                                  	call   0x1012bb80
10989ab6:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10989aba:	33 c9                                           	xor    ecx,ecx
10989abc:	38 4c 24 03                                     	cmp    BYTE PTR [esp+0x3],cl
10989ac0:	0f 95 c1                                        	setne  cl
10989ac3:	89 0a                                           	mov    DWORD PTR [edx],ecx
10989ac5:	33 c9                                           	xor    ecx,ecx
10989ac7:	84 c0                                           	test   al,al
10989ac9:	0f 95 c1                                        	setne  cl
10989acc:	8b c1                                           	mov    eax,ecx
10989ace:	59                                              	pop    ecx
10989acf:	c3                                              	ret
