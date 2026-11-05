# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00766f60 (ScriptCore.SACS::SACS_HasActorImpl)
Paired Ghidra pseudocode: 00766F60_ScriptCore_SACS_SACS_HasActorImpl.c
Window: [0x00766f60, 0x00766f90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00766f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00766f60: e8 2b 24 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
00766f70: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
00766f80: c8 e8 3a 91 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00766f60 <.text+0x365f60>:
  766f60:	e8 2b 24 00 00                                  	call   0x769390
  766f65:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  766f69:	8b 10                                           	mov    edx,DWORD PTR [eax]
  766f6b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  766f71:	51                                              	push   ecx
  766f72:	8b c8                                           	mov    ecx,eax
  766f74:	ff d2                                           	call   edx
  766f76:	85 c0                                           	test   eax,eax
  766f78:	74 0d                                           	je     0x766f87
  766f7a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  766f7e:	51                                              	push   ecx
  766f7f:	8b c8                                           	mov    ecx,eax
  766f81:	e8 3a 91 09 00                                  	call   0x8000c0
  766f86:	c3                                              	ret
  766f87:	32 c0                                           	xor    al,al
  766f89:	c3                                              	ret
  766f8a:	cc                                              	int3
  766f8b:	cc                                              	int3
  766f8c:	cc                                              	int3
  766f8d:	cc                                              	int3
  766f8e:	cc                                              	int3
  766f8f:	cc                                              	int3
