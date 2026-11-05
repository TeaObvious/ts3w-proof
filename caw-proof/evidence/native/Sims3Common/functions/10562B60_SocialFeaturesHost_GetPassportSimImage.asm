# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10562b60 (SocialFeaturesHost_GetPassportSimImage)
Paired Ghidra pseudocode: 10562B60_SocialFeaturesHost_GetPassportSimImage.c
Window: [0x10562b60, 0x10562ba0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10562b60: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 8e d6
10562b70: 2a 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10562b80: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10562b90: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10562b60 <.text+0x561b60>:
10562b60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10562b64:	83 ec 10                                        	sub    esp,0x10
10562b67:	50                                              	push   eax
10562b68:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10562b6c:	51                                              	push   ecx
10562b6d:	e8 8e d6 2a 00                                  	call   0x10810200
10562b72:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10562b76:	8b 10                                           	mov    edx,DWORD PTR [eax]
10562b78:	89 11                                           	mov    DWORD PTR [ecx],edx
10562b7a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10562b7d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10562b80:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10562b83:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10562b86:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10562b89:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10562b8c:	8b c1                                           	mov    eax,ecx
10562b8e:	83 c4 18                                        	add    esp,0x18
10562b91:	c3                                              	ret
10562b92:	cc                                              	int3
10562b93:	cc                                              	int3
10562b94:	cc                                              	int3
10562b95:	cc                                              	int3
10562b96:	cc                                              	int3
10562b97:	cc                                              	int3
10562b98:	cc                                              	int3
10562b99:	cc                                              	int3
10562b9a:	cc                                              	int3
10562b9b:	cc                                              	int3
10562b9c:	cc                                              	int3
10562b9d:	cc                                              	int3
10562b9e:	cc                                              	int3
10562b9f:	cc                                              	int3
