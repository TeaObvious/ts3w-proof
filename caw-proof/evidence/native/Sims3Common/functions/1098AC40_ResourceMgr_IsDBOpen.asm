# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ac40 (ResourceMgr_IsDBOpen)
Paired Ghidra pseudocode: 1098AC40_ResourceMgr_IsDBOpen.c
Window: [0x1098ac40, 0x1098ac80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ac80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ac40: 8b 0d 78 80 cb 10 83 ec 08 85 c9 74 27 8b 41 08
1098ac50: 8b 51 04 56 8b 34 82 8d 44 24 10 50 8d 54 24 08
1098ac60: 52 e8 aa d7 d1 ff 39 30 5e 74 09 b8 01 00 00 00
1098ac70: 83 c4 08 c3 33 c0 83 c4 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ac40 <.text+0x989c40>:
1098ac40:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098ac46:	83 ec 08                                        	sub    esp,0x8
1098ac49:	85 c9                                           	test   ecx,ecx
1098ac4b:	74 27                                           	je     0x1098ac74
1098ac4d:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1098ac50:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
1098ac53:	56                                              	push   esi
1098ac54:	8b 34 82                                        	mov    esi,DWORD PTR [edx+eax*4]
1098ac57:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098ac5b:	50                                              	push   eax
1098ac5c:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1098ac60:	52                                              	push   edx
1098ac61:	e8 aa d7 d1 ff                                  	call   0x106a8410
1098ac66:	39 30                                           	cmp    DWORD PTR [eax],esi
1098ac68:	5e                                              	pop    esi
1098ac69:	74 09                                           	je     0x1098ac74
1098ac6b:	b8 01 00 00 00                                  	mov    eax,0x1
1098ac70:	83 c4 08                                        	add    esp,0x8
1098ac73:	c3                                              	ret
1098ac74:	33 c0                                           	xor    eax,eax
1098ac76:	83 c4 08                                        	add    esp,0x8
1098ac79:	c3                                              	ret
1098ac7a:	cc                                              	int3
1098ac7b:	cc                                              	int3
1098ac7c:	cc                                              	int3
1098ac7d:	cc                                              	int3
1098ac7e:	cc                                              	int3
1098ac7f:	cc                                              	int3
