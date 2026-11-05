# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569a50 (ThumbnailManager_AddBoneDeltaFromBuilder)
Paired Ghidra pseudocode: 10569A50_ThumbnailManager_AddBoneDeltaFromBuilder.c
Window: [0x10569a50, 0x10569aa0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569a50: 56 8b 74 24 08 85 f6 74 41 e8 c2 16 ff ff 8b 10
10569a60: 8b c8 8b 82 cc 00 00 00 56 ff d0 8b 35 50 11 c7
10569a70: 10 85 f6 74 25 85 c0 74 21 8d 4c 24 08 51 8b c8
10569a80: e8 3b 28 e7 ff 84 c0 74 11 8b 4c 24 08 e8 ee 6d
10569a90: e0 ff 50 8b ce e8 c6 74 dc ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
10569a50 <.text+0x568a50>:
10569a50:	56                                              	push   esi
10569a51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10569a55:	85 f6                                           	test   esi,esi
10569a57:	74 41                                           	je     0x10569a9a
10569a59:	e8 c2 16 ff ff                                  	call   0x1055b120
10569a5e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10569a60:	8b c8                                           	mov    ecx,eax
10569a62:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10569a68:	56                                              	push   esi
10569a69:	ff d0                                           	call   eax
10569a6b:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
10569a71:	85 f6                                           	test   esi,esi
10569a73:	74 25                                           	je     0x10569a9a
10569a75:	85 c0                                           	test   eax,eax
10569a77:	74 21                                           	je     0x10569a9a
10569a79:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10569a7d:	51                                              	push   ecx
10569a7e:	8b c8                                           	mov    ecx,eax
10569a80:	e8 3b 28 e7 ff                                  	call   0x103dc2c0
10569a85:	84 c0                                           	test   al,al
10569a87:	74 11                                           	je     0x10569a9a
10569a89:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10569a8d:	e8 ee 6d e0 ff                                  	call   0x10370880
10569a92:	50                                              	push   eax
10569a93:	8b ce                                           	mov    ecx,esi
10569a95:	e8 c6 74 dc ff                                  	call   0x10330f60
10569a9a:	5e                                              	pop    esi
10569a9b:	c3                                              	ret
10569a9c:	cc                                              	int3
10569a9d:	cc                                              	int3
10569a9e:	cc                                              	int3
10569a9f:	cc                                              	int3
