# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5ed0 (ScriptCore.CASUtils::CASUtils_SimBuilderCachePartImpl)
Paired Ghidra pseudocode: 005A5ED0_ScriptCore_CASUtils_CASUtils_SimBuilderCachePartImpl.c
Window: [0x005a5ed0, 0x005a5f30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5ed0: 83 ec 10 e8 b8 34 1c 00 8b 4c 24 14 8b 10 8b 92
005a5ee0: cc 00 00 00 51 8b c8 ff d2 85 c0 74 2e 8b 4c 24
005a5ef0: 20 8b 54 24 24 89 0c 24 8b 4c 24 18 89 4c 24 08
005a5f00: 8d 0c 24 89 54 24 04 8b 54 24 1c 51 8b c8 89 54
005a5f10: 24 10 e8 09 e5 03 00 83 c4 10 c3 b0 01 83 c4 10
005a5f20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5ed0 <.text+0x1a4ed0>:
  5a5ed0:	83 ec 10                                        	sub    esp,0x10
  5a5ed3:	e8 b8 34 1c 00                                  	call   0x769390
  5a5ed8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a5edc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5ede:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  5a5ee4:	51                                              	push   ecx
  5a5ee5:	8b c8                                           	mov    ecx,eax
  5a5ee7:	ff d2                                           	call   edx
  5a5ee9:	85 c0                                           	test   eax,eax
  5a5eeb:	74 2e                                           	je     0x5a5f1b
  5a5eed:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a5ef1:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a5ef5:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  5a5ef8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a5efc:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a5f00:	8d 0c 24                                        	lea    ecx,[esp]
  5a5f03:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  5a5f07:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a5f0b:	51                                              	push   ecx
  5a5f0c:	8b c8                                           	mov    ecx,eax
  5a5f0e:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a5f12:	e8 09 e5 03 00                                  	call   0x5e4420
  5a5f17:	83 c4 10                                        	add    esp,0x10
  5a5f1a:	c3                                              	ret
  5a5f1b:	b0 01                                           	mov    al,0x1
  5a5f1d:	83 c4 10                                        	add    esp,0x10
  5a5f20:	c3                                              	ret
  5a5f21:	cc                                              	int3
  5a5f22:	cc                                              	int3
  5a5f23:	cc                                              	int3
  5a5f24:	cc                                              	int3
  5a5f25:	cc                                              	int3
  5a5f26:	cc                                              	int3
  5a5f27:	cc                                              	int3
  5a5f28:	cc                                              	int3
  5a5f29:	cc                                              	int3
  5a5f2a:	cc                                              	int3
  5a5f2b:	cc                                              	int3
  5a5f2c:	cc                                              	int3
  5a5f2d:	cc                                              	int3
  5a5f2e:	cc                                              	int3
  5a5f2f:	cc                                              	int3
