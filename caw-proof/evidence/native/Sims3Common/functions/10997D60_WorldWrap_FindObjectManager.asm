# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997d60 (WorldWrap_FindObjectManager)
Paired Ghidra pseudocode: 10997D60_WorldWrap_FindObjectManager.c
Window: [0x10997d60, 0x10997da0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997d60: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 56 6a 00 50
10997d70: 51 52 e8 39 b9 89 ff 8b f0 83 c4 10 85 f6 75 0a
10997d80: 8b 44 24 14 89 30 33 c0 5e c3 8b 16 8b 42 40 8b
10997d90: ce ff d0 8b 4c 24 14 89 01 8b c6 5e c3 cc cc cc

LINEAR DISASSEMBLY
10997d60 <.text+0x996d60>:
10997d60:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10997d64:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10997d68:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10997d6c:	56                                              	push   esi
10997d6d:	6a 00                                           	push   0x0
10997d6f:	50                                              	push   eax
10997d70:	51                                              	push   ecx
10997d71:	52                                              	push   edx
10997d72:	e8 39 b9 89 ff                                  	call   0x102336b0
10997d77:	8b f0                                           	mov    esi,eax
10997d79:	83 c4 10                                        	add    esp,0x10
10997d7c:	85 f6                                           	test   esi,esi
10997d7e:	75 0a                                           	jne    0x10997d8a
10997d80:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10997d84:	89 30                                           	mov    DWORD PTR [eax],esi
10997d86:	33 c0                                           	xor    eax,eax
10997d88:	5e                                              	pop    esi
10997d89:	c3                                              	ret
10997d8a:	8b 16                                           	mov    edx,DWORD PTR [esi]
10997d8c:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
10997d8f:	8b ce                                           	mov    ecx,esi
10997d91:	ff d0                                           	call   eax
10997d93:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10997d97:	89 01                                           	mov    DWORD PTR [ecx],eax
10997d99:	8b c6                                           	mov    eax,esi
10997d9b:	5e                                              	pop    esi
10997d9c:	c3                                              	ret
10997d9d:	cc                                              	int3
10997d9e:	cc                                              	int3
10997d9f:	cc                                              	int3
