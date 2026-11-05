# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0075dba0 (ScriptCore.Route::Route_PopPath)
Paired Ghidra pseudocode: 0075DBA0_ScriptCore_Route_Route_PopPath.c
Window: [0x0075dba0, 0x0075dbe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0075dbe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0075dba0: 8b 0d c4 50 1d 01 85 c9 74 2c 8b 44 24 04 56 50
0075dbb0: e8 fb d8 fe ff 8b f0 85 f6 74 1a 8b 16 8b 42 10
0075dbc0: 8b ce ff d0 8b ce e8 25 fd ff ff 8b 16 8b 42 14
0075dbd0: 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0075dba0 <.text+0x35cba0>:
  75dba0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75dba6:	85 c9                                           	test   ecx,ecx
  75dba8:	74 2c                                           	je     0x75dbd6
  75dbaa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  75dbae:	56                                              	push   esi
  75dbaf:	50                                              	push   eax
  75dbb0:	e8 fb d8 fe ff                                  	call   0x74b4b0
  75dbb5:	8b f0                                           	mov    esi,eax
  75dbb7:	85 f6                                           	test   esi,esi
  75dbb9:	74 1a                                           	je     0x75dbd5
  75dbbb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75dbbd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75dbc0:	8b ce                                           	mov    ecx,esi
  75dbc2:	ff d0                                           	call   eax
  75dbc4:	8b ce                                           	mov    ecx,esi
  75dbc6:	e8 25 fd ff ff                                  	call   0x75d8f0
  75dbcb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75dbcd:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75dbd0:	8b ce                                           	mov    ecx,esi
  75dbd2:	5e                                              	pop    esi
  75dbd3:	ff e0                                           	jmp    eax
  75dbd5:	5e                                              	pop    esi
  75dbd6:	c3                                              	ret
  75dbd7:	cc                                              	int3
  75dbd8:	cc                                              	int3
  75dbd9:	cc                                              	int3
  75dbda:	cc                                              	int3
  75dbdb:	cc                                              	int3
  75dbdc:	cc                                              	int3
  75dbdd:	cc                                              	int3
  75dbde:	cc                                              	int3
  75dbdf:	cc                                              	int3
