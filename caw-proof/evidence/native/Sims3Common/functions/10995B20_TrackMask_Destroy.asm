# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995b20 (TrackMask_Destroy)
Paired Ghidra pseudocode: 10995B20_TrackMask_Destroy.c
Window: [0x10995b20, 0x10995b50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995b20: 56 8b 74 24 08 85 f6 74 1f e8 a2 f5 f4 ff 85 c0
10995b30: 74 0c 8b 10 6a 00 8b c8 8b 42 5c 56 ff d0 8b 16
10995b40: 8b 42 04 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995b20 <.text+0x994b20>:
10995b20:	56                                              	push   esi
10995b21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10995b25:	85 f6                                           	test   esi,esi
10995b27:	74 1f                                           	je     0x10995b48
10995b29:	e8 a2 f5 f4 ff                                  	call   0x108e50d0
10995b2e:	85 c0                                           	test   eax,eax
10995b30:	74 0c                                           	je     0x10995b3e
10995b32:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995b34:	6a 00                                           	push   0x0
10995b36:	8b c8                                           	mov    ecx,eax
10995b38:	8b 42 5c                                        	mov    eax,DWORD PTR [edx+0x5c]
10995b3b:	56                                              	push   esi
10995b3c:	ff d0                                           	call   eax
10995b3e:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995b40:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995b43:	8b ce                                           	mov    ecx,esi
10995b45:	5e                                              	pop    esi
10995b46:	ff e0                                           	jmp    eax
10995b48:	5e                                              	pop    esi
10995b49:	c3                                              	ret
10995b4a:	cc                                              	int3
10995b4b:	cc                                              	int3
10995b4c:	cc                                              	int3
10995b4d:	cc                                              	int3
10995b4e:	cc                                              	int3
10995b4f:	cc                                              	int3
