# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e050 (ScriptCore.RouteEvent::RouteEvent_GetObjectID)
Paired Ghidra pseudocode: 0074E050_ScriptCore_RouteEvent_RouteEvent_GetObjectID.c
Window: [0x0074e050, 0x0074e0a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e0a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e050: 8b 0d c4 50 1d 01 85 c9 56 74 31 8b 44 24 08 50
0074e060: e8 ab d4 ff ff 8b f0 85 f6 74 21 8b 16 8b 02 53
0074e070: 57 8b ce ff d0 8b 16 8b 42 04 8b 7e 58 8b 5e 5c
0074e080: 8b ce ff d0 8b c7 5f 8b d3 5b 5e c3 33 c0 33 d2
0074e090: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e050 <.text+0x34d050>:
  74e050:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74e056:	85 c9                                           	test   ecx,ecx
  74e058:	56                                              	push   esi
  74e059:	74 31                                           	je     0x74e08c
  74e05b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74e05f:	50                                              	push   eax
  74e060:	e8 ab d4 ff ff                                  	call   0x74b510
  74e065:	8b f0                                           	mov    esi,eax
  74e067:	85 f6                                           	test   esi,esi
  74e069:	74 21                                           	je     0x74e08c
  74e06b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e06d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74e06f:	53                                              	push   ebx
  74e070:	57                                              	push   edi
  74e071:	8b ce                                           	mov    ecx,esi
  74e073:	ff d0                                           	call   eax
  74e075:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e077:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74e07a:	8b 7e 58                                        	mov    edi,DWORD PTR [esi+0x58]
  74e07d:	8b 5e 5c                                        	mov    ebx,DWORD PTR [esi+0x5c]
  74e080:	8b ce                                           	mov    ecx,esi
  74e082:	ff d0                                           	call   eax
  74e084:	8b c7                                           	mov    eax,edi
  74e086:	5f                                              	pop    edi
  74e087:	8b d3                                           	mov    edx,ebx
  74e089:	5b                                              	pop    ebx
  74e08a:	5e                                              	pop    esi
  74e08b:	c3                                              	ret
  74e08c:	33 c0                                           	xor    eax,eax
  74e08e:	33 d2                                           	xor    edx,edx
  74e090:	5e                                              	pop    esi
  74e091:	c3                                              	ret
  74e092:	cc                                              	int3
  74e093:	cc                                              	int3
  74e094:	cc                                              	int3
  74e095:	cc                                              	int3
  74e096:	cc                                              	int3
  74e097:	cc                                              	int3
  74e098:	cc                                              	int3
  74e099:	cc                                              	int3
  74e09a:	cc                                              	int3
  74e09b:	cc                                              	int3
  74e09c:	cc                                              	int3
  74e09d:	cc                                              	int3
  74e09e:	cc                                              	int3
  74e09f:	cc                                              	int3
