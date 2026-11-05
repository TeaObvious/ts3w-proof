# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561b30 (SocialFeaturesHost_GetEntitlementImageKey)
Paired Ghidra pseudocode: 10561B30_SocialFeaturesHost_GetEntitlementImageKey.c
Window: [0x10561b30, 0x10561b70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561b30: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 ce e9
10561b40: 2a 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
10561b50: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
10561b60: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561b30 <.text+0x560b30>:
10561b30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561b34:	83 ec 10                                        	sub    esp,0x10
10561b37:	50                                              	push   eax
10561b38:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10561b3c:	51                                              	push   ecx
10561b3d:	e8 ce e9 2a 00                                  	call   0x10810510
10561b42:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10561b46:	8b 10                                           	mov    edx,DWORD PTR [eax]
10561b48:	89 11                                           	mov    DWORD PTR [ecx],edx
10561b4a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10561b4d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10561b50:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10561b53:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10561b56:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10561b59:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
10561b5c:	8b c1                                           	mov    eax,ecx
10561b5e:	83 c4 18                                        	add    esp,0x18
10561b61:	c3                                              	ret
10561b62:	cc                                              	int3
10561b63:	cc                                              	int3
10561b64:	cc                                              	int3
10561b65:	cc                                              	int3
10561b66:	cc                                              	int3
10561b67:	cc                                              	int3
10561b68:	cc                                              	int3
10561b69:	cc                                              	int3
10561b6a:	cc                                              	int3
10561b6b:	cc                                              	int3
10561b6c:	cc                                              	int3
10561b6d:	cc                                              	int3
10561b6e:	cc                                              	int3
10561b6f:	cc                                              	int3
