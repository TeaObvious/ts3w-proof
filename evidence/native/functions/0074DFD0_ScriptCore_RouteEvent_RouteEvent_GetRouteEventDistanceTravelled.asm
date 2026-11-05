# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dfd0 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventDistanceTravelled)
Paired Ghidra pseudocode: 0074DFD0_ScriptCore_RouteEvent_RouteEvent_GetRouteEventDistanceTravelled.c
Window: [0x0074dfd0, 0x0074e010) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dfd0: 51 8b 0d c4 50 1d 01 85 c9 56 74 2f 8b 44 24 0c
0074dfe0: 50 e8 2a d5 ff ff 8b f0 85 f6 74 1f 8b 16 8b 02
0074dff0: 8b ce ff d0 d9 46 50 8b 16 d9 5c 24 04 8b 42 04
0074e000: 8b ce ff d0 d9 44 24 04 5e 59 c3 d9 ee 5e 59 c3

LINEAR DISASSEMBLY
0074dfd0 <.text+0x34cfd0>:
  74dfd0:	51                                              	push   ecx
  74dfd1:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74dfd7:	85 c9                                           	test   ecx,ecx
  74dfd9:	56                                              	push   esi
  74dfda:	74 2f                                           	je     0x74e00b
  74dfdc:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74dfe0:	50                                              	push   eax
  74dfe1:	e8 2a d5 ff ff                                  	call   0x74b510
  74dfe6:	8b f0                                           	mov    esi,eax
  74dfe8:	85 f6                                           	test   esi,esi
  74dfea:	74 1f                                           	je     0x74e00b
  74dfec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74dfee:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74dff0:	8b ce                                           	mov    ecx,esi
  74dff2:	ff d0                                           	call   eax
  74dff4:	d9 46 50                                        	fld    DWORD PTR [esi+0x50]
  74dff7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74dff9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74dffd:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74e000:	8b ce                                           	mov    ecx,esi
  74e002:	ff d0                                           	call   eax
  74e004:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  74e008:	5e                                              	pop    esi
  74e009:	59                                              	pop    ecx
  74e00a:	c3                                              	ret
  74e00b:	d9 ee                                           	fldz
  74e00d:	5e                                              	pop    esi
  74e00e:	59                                              	pop    ecx
  74e00f:	c3                                              	ret
