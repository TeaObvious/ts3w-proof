# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5f30 (ScriptCore.CASUtils::CASUtils_SimBuilderUncachePartImpl)
Paired Ghidra pseudocode: 005A5F30_ScriptCore_CASUtils_CASUtils_SimBuilderUncachePartImpl.c
Window: [0x005a5f30, 0x005a5f90) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5f90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5f30: 83 ec 10 56 8b 74 24 18 8b c6 25 00 00 00 ff 3d
005a5f40: 00 00 00 35 75 42 e8 45 34 1c 00 8b 10 8b c8 8b
005a5f50: 82 cc 00 00 00 56 ff d0 85 c0 74 2c 8b 4c 24 24
005a5f60: 8b 54 24 28 89 4c 24 04 8b 4c 24 1c 89 4c 24 0c
005a5f70: 8d 4c 24 04 89 54 24 08 8b 54 24 20 51 8b c8 89
005a5f80: 54 24 14 e8 e8 df 03 00 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
005a5f30 <.text+0x1a4f30>:
  5a5f30:	83 ec 10                                        	sub    esp,0x10
  5a5f33:	56                                              	push   esi
  5a5f34:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a5f38:	8b c6                                           	mov    eax,esi
  5a5f3a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5f3f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5f44:	75 42                                           	jne    0x5a5f88
  5a5f46:	e8 45 34 1c 00                                  	call   0x769390
  5a5f4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5f4d:	8b c8                                           	mov    ecx,eax
  5a5f4f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5f55:	56                                              	push   esi
  5a5f56:	ff d0                                           	call   eax
  5a5f58:	85 c0                                           	test   eax,eax
  5a5f5a:	74 2c                                           	je     0x5a5f88
  5a5f5c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a5f60:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a5f64:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5a5f68:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a5f6c:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  5a5f70:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  5a5f74:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  5a5f78:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a5f7c:	51                                              	push   ecx
  5a5f7d:	8b c8                                           	mov    ecx,eax
  5a5f7f:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a5f83:	e8 e8 df 03 00                                  	call   0x5e3f70
  5a5f88:	5e                                              	pop    esi
  5a5f89:	83 c4 10                                        	add    esp,0x10
  5a5f8c:	c3                                              	ret
  5a5f8d:	cc                                              	int3
  5a5f8e:	cc                                              	int3
  5a5f8f:	cc                                              	int3
