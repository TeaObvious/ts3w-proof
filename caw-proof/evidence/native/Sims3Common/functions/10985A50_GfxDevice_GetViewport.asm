# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985a50 (GfxDevice_GetViewport)
Paired Ghidra pseudocode: 10985A50_GfxDevice_GetViewport.c
Window: [0x10985a50, 0x10985aa0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985a50: 8b 0d e8 35 c7 10 83 ec 10 33 c0 85 c9 56 8b 74
10985a60: 24 18 c7 06 00 00 00 00 89 46 04 89 46 08 89 46
10985a70: 0c 74 25 8d 44 24 04 50 e8 c3 56 a8 ff 8b 4c 24
10985a80: 04 8b 54 24 08 8b 44 24 0c 89 0e 8b 4c 24 10 89
10985a90: 56 04 89 46 08 89 4e 0c 8b c6 5e 83 c4 10 c3 cc

LINEAR DISASSEMBLY
10985a50 <.text+0x984a50>:
10985a50:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985a56:	83 ec 10                                        	sub    esp,0x10
10985a59:	33 c0                                           	xor    eax,eax
10985a5b:	85 c9                                           	test   ecx,ecx
10985a5d:	56                                              	push   esi
10985a5e:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10985a62:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
10985a68:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
10985a6b:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10985a6e:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
10985a71:	74 25                                           	je     0x10985a98
10985a73:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10985a77:	50                                              	push   eax
10985a78:	e8 c3 56 a8 ff                                  	call   0x1040b140
10985a7d:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10985a81:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10985a85:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10985a89:	89 0e                                           	mov    DWORD PTR [esi],ecx
10985a8b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10985a8f:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
10985a92:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10985a95:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
10985a98:	8b c6                                           	mov    eax,esi
10985a9a:	5e                                              	pop    esi
10985a9b:	83 c4 10                                        	add    esp,0x10
10985a9e:	c3                                              	ret
10985a9f:	cc                                              	int3
