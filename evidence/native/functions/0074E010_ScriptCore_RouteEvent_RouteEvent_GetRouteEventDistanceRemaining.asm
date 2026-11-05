# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e010 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventDistanceRemaining)
Paired Ghidra pseudocode: 0074E010_ScriptCore_RouteEvent_RouteEvent_GetRouteEventDistanceRemaining.c
Window: [0x0074e010, 0x0074e050) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e010: 51 8b 0d c4 50 1d 01 85 c9 56 74 2f 8b 44 24 0c
0074e020: 50 e8 ea d4 ff ff 8b f0 85 f6 74 1f 8b 16 8b 02
0074e030: 8b ce ff d0 d9 46 54 8b 16 d9 5c 24 04 8b 42 04
0074e040: 8b ce ff d0 d9 44 24 04 5e 59 c3 d9 ee 5e 59 c3

LINEAR DISASSEMBLY
0074e010 <.text+0x34d010>:
  74e010:	51                                              	push   ecx
  74e011:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74e017:	85 c9                                           	test   ecx,ecx
  74e019:	56                                              	push   esi
  74e01a:	74 2f                                           	je     0x74e04b
  74e01c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74e020:	50                                              	push   eax
  74e021:	e8 ea d4 ff ff                                  	call   0x74b510
  74e026:	8b f0                                           	mov    esi,eax
  74e028:	85 f6                                           	test   esi,esi
  74e02a:	74 1f                                           	je     0x74e04b
  74e02c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e02e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74e030:	8b ce                                           	mov    ecx,esi
  74e032:	ff d0                                           	call   eax
  74e034:	d9 46 54                                        	fld    DWORD PTR [esi+0x54]
  74e037:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e039:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74e03d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74e040:	8b ce                                           	mov    ecx,esi
  74e042:	ff d0                                           	call   eax
  74e044:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  74e048:	5e                                              	pop    esi
  74e049:	59                                              	pop    ecx
  74e04a:	c3                                              	ret
  74e04b:	d9 ee                                           	fldz
  74e04d:	5e                                              	pop    esi
  74e04e:	59                                              	pop    ecx
  74e04f:	c3                                              	ret
