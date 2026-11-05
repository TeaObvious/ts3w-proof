# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5cb0 (ScriptCore.UserToolUtils::UserToolUtils_ToolInputGenericImpl)
Paired Ghidra pseudocode: 00CE5CB0_ScriptCore_UserToolUtils_UserToolUtils_ToolInputGenericImpl.c
Window: [0x00ce5cb0, 0x00ce5cf0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5cb0: e8 4b 98 00 00 85 c0 74 28 8b 4c 24 14 d9 44 24
00ce5cc0: 0c 8b 54 24 10 51 8b 4c 24 08 52 83 ec 08 d9 5c
00ce5cd0: 24 04 d9 44 24 18 d9 1c 24 51 8b c8 e8 9f 9d 00
00ce5ce0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5cb0 <.text+0x8e4cb0>:
  ce5cb0:	e8 4b 98 00 00                                  	call   0xcef500
  ce5cb5:	85 c0                                           	test   eax,eax
  ce5cb7:	74 28                                           	je     0xce5ce1
  ce5cb9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce5cbd:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  ce5cc1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ce5cc5:	51                                              	push   ecx
  ce5cc6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ce5cca:	52                                              	push   edx
  ce5ccb:	83 ec 08                                        	sub    esp,0x8
  ce5cce:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  ce5cd2:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  ce5cd6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ce5cd9:	51                                              	push   ecx
  ce5cda:	8b c8                                           	mov    ecx,eax
  ce5cdc:	e8 9f 9d 00 00                                  	call   0xcefa80
  ce5ce1:	c3                                              	ret
  ce5ce2:	cc                                              	int3
  ce5ce3:	cc                                              	int3
  ce5ce4:	cc                                              	int3
  ce5ce5:	cc                                              	int3
  ce5ce6:	cc                                              	int3
  ce5ce7:	cc                                              	int3
  ce5ce8:	cc                                              	int3
  ce5ce9:	cc                                              	int3
  ce5cea:	cc                                              	int3
  ce5ceb:	cc                                              	int3
  ce5cec:	cc                                              	int3
  ce5ced:	cc                                              	int3
  ce5cee:	cc                                              	int3
  ce5cef:	cc                                              	int3
