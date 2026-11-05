# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569a20 (ThumbnailManager_AddSimBuilder)
Paired Ghidra pseudocode: 10569A20_ThumbnailManager_AddSimBuilder.c
Window: [0x10569a20, 0x10569a50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569a20: 56 8b 74 24 08 85 f6 74 22 e8 f2 16 ff ff 8b 10
10569a30: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b 0d 50 11 c7
10569a40: 10 85 c9 74 06 50 e8 75 75 dc ff 5e c3 cc cc cc

LINEAR DISASSEMBLY
10569a20 <.text+0x568a20>:
10569a20:	56                                              	push   esi
10569a21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10569a25:	85 f6                                           	test   esi,esi
10569a27:	74 22                                           	je     0x10569a4b
10569a29:	e8 f2 16 ff ff                                  	call   0x1055b120
10569a2e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10569a30:	8b c8                                           	mov    ecx,eax
10569a32:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10569a38:	56                                              	push   esi
10569a39:	ff d0                                           	call   eax
10569a3b:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569a41:	85 c9                                           	test   ecx,ecx
10569a43:	74 06                                           	je     0x10569a4b
10569a45:	50                                              	push   eax
10569a46:	e8 75 75 dc ff                                  	call   0x10330fc0
10569a4b:	5e                                              	pop    esi
10569a4c:	c3                                              	ret
10569a4d:	cc                                              	int3
10569a4e:	cc                                              	int3
10569a4f:	cc                                              	int3
