# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5cb0 (ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl)
Paired Ghidra pseudocode: 005A5CB0_ScriptCore_CASUtils_CASUtils_SimBuilderAddPartImpl.c
Window: [0x005a5cb0, 0x005a5d20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5cb0: 83 ec 10 e8 d8 36 1c 00 85 c0 74 53 8b 4c 24 14
005a5cc0: 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00 35 75 3f
005a5cd0: 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 74
005a5ce0: 2e 8b 4c 24 20 8b 54 24 24 89 0c 24 8b 4c 24 18
005a5cf0: 89 4c 24 08 8d 0c 24 89 54 24 04 8b 54 24 1c 51
005a5d00: 8b c8 89 54 24 10 e8 75 f4 03 00 83 c4 10 c3 32
005a5d10: c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5cb0 <.text+0x1a4cb0>:
  5a5cb0:	83 ec 10                                        	sub    esp,0x10
  5a5cb3:	e8 d8 36 1c 00                                  	call   0x769390
  5a5cb8:	85 c0                                           	test   eax,eax
  5a5cba:	74 53                                           	je     0x5a5d0f
  5a5cbc:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a5cc0:	8b d1                                           	mov    edx,ecx
  5a5cc2:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a5cc8:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a5cce:	75 3f                                           	jne    0x5a5d0f
  5a5cd0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5cd2:	51                                              	push   ecx
  5a5cd3:	8b c8                                           	mov    ecx,eax
  5a5cd5:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5cdb:	ff d0                                           	call   eax
  5a5cdd:	85 c0                                           	test   eax,eax
  5a5cdf:	74 2e                                           	je     0x5a5d0f
  5a5ce1:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a5ce5:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a5ce9:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  5a5cec:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a5cf0:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a5cf4:	8d 0c 24                                        	lea    ecx,[esp]
  5a5cf7:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  5a5cfb:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a5cff:	51                                              	push   ecx
  5a5d00:	8b c8                                           	mov    ecx,eax
  5a5d02:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a5d06:	e8 75 f4 03 00                                  	call   0x5e5180
  5a5d0b:	83 c4 10                                        	add    esp,0x10
  5a5d0e:	c3                                              	ret
  5a5d0f:	32 c0                                           	xor    al,al
  5a5d11:	83 c4 10                                        	add    esp,0x10
  5a5d14:	c3                                              	ret
  5a5d15:	cc                                              	int3
  5a5d16:	cc                                              	int3
  5a5d17:	cc                                              	int3
  5a5d18:	cc                                              	int3
  5a5d19:	cc                                              	int3
  5a5d1a:	cc                                              	int3
  5a5d1b:	cc                                              	int3
  5a5d1c:	cc                                              	int3
  5a5d1d:	cc                                              	int3
  5a5d1e:	cc                                              	int3
  5a5d1f:	cc                                              	int3
