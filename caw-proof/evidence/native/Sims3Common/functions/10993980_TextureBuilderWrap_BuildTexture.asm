# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993980 (TextureBuilderWrap_BuildTexture)
Paired Ghidra pseudocode: 10993980_TextureBuilderWrap_BuildTexture.c
Window: [0x10993980, 0x109939c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x109939c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993980: 83 ec 18 33 c0 33 c9 56 89 44 24 0c 8d 44 24 04
10993990: 33 d2 33 f6 89 4c 24 10 8b 4c 24 20 50 c7 44 24
109939a0: 08 60 60 b9 10 c7 44 24 0c ff ff ff ff 89 54 24
109939b0: 18 89 74 24 1c e8 26 53 a6 ff 5e 83 c4 18 c3 cc

LINEAR DISASSEMBLY
10993980 <.text+0x992980>:
10993980:	83 ec 18                                        	sub    esp,0x18
10993983:	33 c0                                           	xor    eax,eax
10993985:	33 c9                                           	xor    ecx,ecx
10993987:	56                                              	push   esi
10993988:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1099398c:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10993990:	33 d2                                           	xor    edx,edx
10993992:	33 f6                                           	xor    esi,esi
10993994:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10993998:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1099399c:	50                                              	push   eax
1099399d:	c7 44 24 08 60 60 b9 10                         	mov    DWORD PTR [esp+0x8],0x10b96060
109939a5:	c7 44 24 0c ff ff ff ff                         	mov    DWORD PTR [esp+0xc],0xffffffff
109939ad:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
109939b1:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
109939b5:	e8 26 53 a6 ff                                  	call   0x103f8ce0
109939ba:	5e                                              	pop    esi
109939bb:	83 c4 18                                        	add    esp,0x18
109939be:	c3                                              	ret
109939bf:	cc                                              	int3
