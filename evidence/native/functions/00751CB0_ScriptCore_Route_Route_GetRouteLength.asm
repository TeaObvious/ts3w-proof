# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751cb0 (ScriptCore.Route::Route_GetRouteLength)
Paired Ghidra pseudocode: 00751CB0_ScriptCore_Route_Route_GetRouteLength.c
Window: [0x00751cb0, 0x00751d00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751cb0: 51 8b 0d c4 50 1d 01 85 c9 56 74 34 8b 44 24 0c
00751cc0: 50 e8 ea 97 ff ff 8b f0 85 f6 74 24 8b 16 8b 42
00751cd0: 10 8b ce ff d0 8b ce e8 04 e4 ff ff d9 5c 24 04
00751ce0: 8b 16 8b 42 14 8b ce ff d0 d9 44 24 04 5e 59 c3
00751cf0: d9 ee 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751cb0 <.text+0x350cb0>:
  751cb0:	51                                              	push   ecx
  751cb1:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751cb7:	85 c9                                           	test   ecx,ecx
  751cb9:	56                                              	push   esi
  751cba:	74 34                                           	je     0x751cf0
  751cbc:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  751cc0:	50                                              	push   eax
  751cc1:	e8 ea 97 ff ff                                  	call   0x74b4b0
  751cc6:	8b f0                                           	mov    esi,eax
  751cc8:	85 f6                                           	test   esi,esi
  751cca:	74 24                                           	je     0x751cf0
  751ccc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751cce:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751cd1:	8b ce                                           	mov    ecx,esi
  751cd3:	ff d0                                           	call   eax
  751cd5:	8b ce                                           	mov    ecx,esi
  751cd7:	e8 04 e4 ff ff                                  	call   0x7500e0
  751cdc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  751ce0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751ce2:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751ce5:	8b ce                                           	mov    ecx,esi
  751ce7:	ff d0                                           	call   eax
  751ce9:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  751ced:	5e                                              	pop    esi
  751cee:	59                                              	pop    ecx
  751cef:	c3                                              	ret
  751cf0:	d9 ee                                           	fldz
  751cf2:	5e                                              	pop    esi
  751cf3:	59                                              	pop    ecx
  751cf4:	c3                                              	ret
  751cf5:	cc                                              	int3
  751cf6:	cc                                              	int3
  751cf7:	cc                                              	int3
  751cf8:	cc                                              	int3
  751cf9:	cc                                              	int3
  751cfa:	cc                                              	int3
  751cfb:	cc                                              	int3
  751cfc:	cc                                              	int3
  751cfd:	cc                                              	int3
  751cfe:	cc                                              	int3
  751cff:	cc                                              	int3
