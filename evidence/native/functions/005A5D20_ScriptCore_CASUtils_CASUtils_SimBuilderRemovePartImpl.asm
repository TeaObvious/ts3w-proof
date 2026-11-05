# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5d20 (ScriptCore.CASUtils::CASUtils_SimBuilderRemovePartImpl)
Paired Ghidra pseudocode: 005A5D20_ScriptCore_CASUtils_CASUtils_SimBuilderRemovePartImpl.c
Window: [0x005a5d20, 0x005a5d80) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5d20: 83 ec 10 e8 68 36 1c 00 85 c0 74 4f 8b 4c 24 14
005a5d30: 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00 35 75 3b
005a5d40: 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 74
005a5d50: 2a 8b 4c 24 20 8b 54 24 24 89 0c 24 8b 4c 24 18
005a5d60: 89 4c 24 08 8d 0c 24 89 54 24 04 8b 54 24 1c 51
005a5d70: 8b c8 89 54 24 10 e8 c5 e5 03 00 83 c4 10 c3 cc

LINEAR DISASSEMBLY
005a5d20 <.text+0x1a4d20>:
  5a5d20:	83 ec 10                                        	sub    esp,0x10
  5a5d23:	e8 68 36 1c 00                                  	call   0x769390
  5a5d28:	85 c0                                           	test   eax,eax
  5a5d2a:	74 4f                                           	je     0x5a5d7b
  5a5d2c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a5d30:	8b d1                                           	mov    edx,ecx
  5a5d32:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a5d38:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a5d3e:	75 3b                                           	jne    0x5a5d7b
  5a5d40:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5d42:	51                                              	push   ecx
  5a5d43:	8b c8                                           	mov    ecx,eax
  5a5d45:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5d4b:	ff d0                                           	call   eax
  5a5d4d:	85 c0                                           	test   eax,eax
  5a5d4f:	74 2a                                           	je     0x5a5d7b
  5a5d51:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a5d55:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a5d59:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  5a5d5c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a5d60:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a5d64:	8d 0c 24                                        	lea    ecx,[esp]
  5a5d67:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  5a5d6b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a5d6f:	51                                              	push   ecx
  5a5d70:	8b c8                                           	mov    ecx,eax
  5a5d72:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a5d76:	e8 c5 e5 03 00                                  	call   0x5e4340
  5a5d7b:	83 c4 10                                        	add    esp,0x10
  5a5d7e:	c3                                              	ret
  5a5d7f:	cc                                              	int3
