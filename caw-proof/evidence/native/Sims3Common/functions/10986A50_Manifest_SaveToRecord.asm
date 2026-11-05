# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986a50 (Manifest_SaveToRecord)
Paired Ghidra pseudocode: 10986A50_Manifest_SaveToRecord.c
Window: [0x10986a50, 0x10986ab0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986a50: 83 ec 08 8b 44 24 10 89 44 24 10 e8 70 e6 f5 ff
10986a60: 85 c0 74 2f 56 8b 35 78 80 cb 10 8d 4c 24 14 51
10986a70: 8d 54 24 08 52 8b ce e8 94 19 d2 ff 8b 4e 08 8b
10986a80: 56 04 8b 44 24 04 3b 04 8a 5e 74 07 8b 40 04 85
10986a90: c0 75 06 32 c0 83 c4 08 c3 8b 4c 24 0c 6a 00 50
10986aa0: e8 8b fe e1 ff 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986a50 <.text+0x985a50>:
10986a50:	83 ec 08                                        	sub    esp,0x8
10986a53:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10986a57:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10986a5b:	e8 70 e6 f5 ff                                  	call   0x108e50d0
10986a60:	85 c0                                           	test   eax,eax
10986a62:	74 2f                                           	je     0x10986a93
10986a64:	56                                              	push   esi
10986a65:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
10986a6b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10986a6f:	51                                              	push   ecx
10986a70:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10986a74:	52                                              	push   edx
10986a75:	8b ce                                           	mov    ecx,esi
10986a77:	e8 94 19 d2 ff                                  	call   0x106a8410
10986a7c:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
10986a7f:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
10986a82:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986a86:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
10986a89:	5e                                              	pop    esi
10986a8a:	74 07                                           	je     0x10986a93
10986a8c:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
10986a8f:	85 c0                                           	test   eax,eax
10986a91:	75 06                                           	jne    0x10986a99
10986a93:	32 c0                                           	xor    al,al
10986a95:	83 c4 08                                        	add    esp,0x8
10986a98:	c3                                              	ret
10986a99:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10986a9d:	6a 00                                           	push   0x0
10986a9f:	50                                              	push   eax
10986aa0:	e8 8b fe e1 ff                                  	call   0x107a6930
10986aa5:	83 c4 08                                        	add    esp,0x8
10986aa8:	c3                                              	ret
10986aa9:	cc                                              	int3
10986aaa:	cc                                              	int3
10986aab:	cc                                              	int3
10986aac:	cc                                              	int3
10986aad:	cc                                              	int3
10986aae:	cc                                              	int3
10986aaf:	cc                                              	int3
