# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0075db60 (ScriptCore.Route::Route_ClearRoutePaths)
Paired Ghidra pseudocode: 0075DB60_ScriptCore_Route_Route_ClearRoutePaths.c
Window: [0x0075db60, 0x0075dba0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0075dba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0075db60: 8b 0d c4 50 1d 01 85 c9 74 2c 8b 44 24 04 56 50
0075db70: e8 3b d9 fe ff 8b f0 85 f6 74 1a 8b 16 8b 42 10
0075db80: 8b ce ff d0 8b ce e8 15 ba ff ff 8b 16 8b 42 14
0075db90: 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0075db60 <.text+0x35cb60>:
  75db60:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75db66:	85 c9                                           	test   ecx,ecx
  75db68:	74 2c                                           	je     0x75db96
  75db6a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  75db6e:	56                                              	push   esi
  75db6f:	50                                              	push   eax
  75db70:	e8 3b d9 fe ff                                  	call   0x74b4b0
  75db75:	8b f0                                           	mov    esi,eax
  75db77:	85 f6                                           	test   esi,esi
  75db79:	74 1a                                           	je     0x75db95
  75db7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75db7d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75db80:	8b ce                                           	mov    ecx,esi
  75db82:	ff d0                                           	call   eax
  75db84:	8b ce                                           	mov    ecx,esi
  75db86:	e8 15 ba ff ff                                  	call   0x7595a0
  75db8b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75db8d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75db90:	8b ce                                           	mov    ecx,esi
  75db92:	5e                                              	pop    esi
  75db93:	ff e0                                           	jmp    eax
  75db95:	5e                                              	pop    esi
  75db96:	c3                                              	ret
  75db97:	cc                                              	int3
  75db98:	cc                                              	int3
  75db99:	cc                                              	int3
  75db9a:	cc                                              	int3
  75db9b:	cc                                              	int3
  75db9c:	cc                                              	int3
  75db9d:	cc                                              	int3
  75db9e:	cc                                              	int3
  75db9f:	cc                                              	int3
