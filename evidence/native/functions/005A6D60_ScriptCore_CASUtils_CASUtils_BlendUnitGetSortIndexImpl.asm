# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6d60 (ScriptCore.CASUtils::CASUtils_BlendUnitGetSortIndexImpl)
Paired Ghidra pseudocode: 005A6D60_ScriptCore_CASUtils_CASUtils_BlendUnitGetSortIndexImpl.c
Window: [0x005a6d60, 0x005a6da0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6d60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6d70: 35 74 04 33 c0 5e c3 e8 14 26 1c 00 8b 10 8b c8
005a6d80: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 5c
005a6d90: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6d60 <.text+0x1a5d60>:
  5a6d60:	56                                              	push   esi
  5a6d61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6d65:	8b c6                                           	mov    eax,esi
  5a6d67:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6d6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6d71:	74 04                                           	je     0x5a6d77
  5a6d73:	33 c0                                           	xor    eax,eax
  5a6d75:	5e                                              	pop    esi
  5a6d76:	c3                                              	ret
  5a6d77:	e8 14 26 1c 00                                  	call   0x769390
  5a6d7c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6d7e:	8b c8                                           	mov    ecx,eax
  5a6d80:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6d86:	56                                              	push   esi
  5a6d87:	ff d0                                           	call   eax
  5a6d89:	85 c0                                           	test   eax,eax
  5a6d8b:	74 e6                                           	je     0x5a6d73
  5a6d8d:	8b 40 5c                                        	mov    eax,DWORD PTR [eax+0x5c]
  5a6d90:	5e                                              	pop    esi
  5a6d91:	c3                                              	ret
  5a6d92:	cc                                              	int3
  5a6d93:	cc                                              	int3
  5a6d94:	cc                                              	int3
  5a6d95:	cc                                              	int3
  5a6d96:	cc                                              	int3
  5a6d97:	cc                                              	int3
  5a6d98:	cc                                              	int3
  5a6d99:	cc                                              	int3
  5a6d9a:	cc                                              	int3
  5a6d9b:	cc                                              	int3
  5a6d9c:	cc                                              	int3
  5a6d9d:	cc                                              	int3
  5a6d9e:	cc                                              	int3
  5a6d9f:	cc                                              	int3
