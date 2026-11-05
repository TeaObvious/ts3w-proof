# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561fa0 (SocialFeaturesHost_GetWallPostAuthorImage)
Paired Ghidra pseudocode: 10561FA0_SocialFeaturesHost_GetWallPostAuthorImage.c
Window: [0x10561fa0, 0x10561ff0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561fa0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
10561fb0: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 2f be 2a
10561fc0: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
10561fd0: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
10561fe0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561fa0 <.text+0x560fa0>:
10561fa0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10561fa4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10561fa8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10561fac:	83 ec 10                                        	sub    esp,0x10
10561faf:	50                                              	push   eax
10561fb0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10561fb4:	51                                              	push   ecx
10561fb5:	52                                              	push   edx
10561fb6:	50                                              	push   eax
10561fb7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10561fbb:	51                                              	push   ecx
10561fbc:	e8 2f be 2a 00                                  	call   0x1080ddf0
10561fc1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10561fc5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10561fc7:	89 11                                           	mov    DWORD PTR [ecx],edx
10561fc9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10561fcc:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10561fcf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10561fd2:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10561fd5:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10561fd8:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10561fdb:	8b c1                                           	mov    eax,ecx
10561fdd:	83 c4 24                                        	add    esp,0x24
10561fe0:	c3                                              	ret
10561fe1:	cc                                              	int3
10561fe2:	cc                                              	int3
10561fe3:	cc                                              	int3
10561fe4:	cc                                              	int3
10561fe5:	cc                                              	int3
10561fe6:	cc                                              	int3
10561fe7:	cc                                              	int3
10561fe8:	cc                                              	int3
10561fe9:	cc                                              	int3
10561fea:	cc                                              	int3
10561feb:	cc                                              	int3
10561fec:	cc                                              	int3
10561fed:	cc                                              	int3
10561fee:	cc                                              	int3
10561fef:	cc                                              	int3
