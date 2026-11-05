# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5a00 (ScriptCore.CASUtils::CASUtils_SimsVisibleInCASImpl)
Paired Ghidra pseudocode: 005A5A00_ScriptCore_CASUtils_CASUtils_SimsVisibleInCASImpl.c
Window: [0x005a5a00, 0x005a5a60) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5a00: 56 e8 6a 27 14 00 8b f0 85 f6 74 4c 53 8b 5c 24
005a5a10: 0c 84 db 57 bf 10 00 00 00 75 05 bf 01 00 00 00
005a5a20: 68 00 f0 ff 7f 57 8b ce e8 33 28 14 00 8b 76 38
005a5a30: 85 f6 74 22 84 db 0f 94 c0 8b ce 50 e8 6f 93 13
005a5a40: 00 53 8b ce e8 57 93 13 00 68 00 f0 ff 7f 57 8b
005a5a50: ce e8 2a 93 13 00 5f 5b 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5a00 <.text+0x1a4a00>:
  5a5a00:	56                                              	push   esi
  5a5a01:	e8 6a 27 14 00                                  	call   0x6e8170
  5a5a06:	8b f0                                           	mov    esi,eax
  5a5a08:	85 f6                                           	test   esi,esi
  5a5a0a:	74 4c                                           	je     0x5a5a58
  5a5a0c:	53                                              	push   ebx
  5a5a0d:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  5a5a11:	84 db                                           	test   bl,bl
  5a5a13:	57                                              	push   edi
  5a5a14:	bf 10 00 00 00                                  	mov    edi,0x10
  5a5a19:	75 05                                           	jne    0x5a5a20
  5a5a1b:	bf 01 00 00 00                                  	mov    edi,0x1
  5a5a20:	68 00 f0 ff 7f                                  	push   0x7ffff000
  5a5a25:	57                                              	push   edi
  5a5a26:	8b ce                                           	mov    ecx,esi
  5a5a28:	e8 33 28 14 00                                  	call   0x6e8260
  5a5a2d:	8b 76 38                                        	mov    esi,DWORD PTR [esi+0x38]
  5a5a30:	85 f6                                           	test   esi,esi
  5a5a32:	74 22                                           	je     0x5a5a56
  5a5a34:	84 db                                           	test   bl,bl
  5a5a36:	0f 94 c0                                        	sete   al
  5a5a39:	8b ce                                           	mov    ecx,esi
  5a5a3b:	50                                              	push   eax
  5a5a3c:	e8 6f 93 13 00                                  	call   0x6dedb0
  5a5a41:	53                                              	push   ebx
  5a5a42:	8b ce                                           	mov    ecx,esi
  5a5a44:	e8 57 93 13 00                                  	call   0x6deda0
  5a5a49:	68 00 f0 ff 7f                                  	push   0x7ffff000
  5a5a4e:	57                                              	push   edi
  5a5a4f:	8b ce                                           	mov    ecx,esi
  5a5a51:	e8 2a 93 13 00                                  	call   0x6ded80
  5a5a56:	5f                                              	pop    edi
  5a5a57:	5b                                              	pop    ebx
  5a5a58:	5e                                              	pop    esi
  5a5a59:	c3                                              	ret
  5a5a5a:	cc                                              	int3
  5a5a5b:	cc                                              	int3
  5a5a5c:	cc                                              	int3
  5a5a5d:	cc                                              	int3
  5a5a5e:	cc                                              	int3
  5a5a5f:	cc                                              	int3
