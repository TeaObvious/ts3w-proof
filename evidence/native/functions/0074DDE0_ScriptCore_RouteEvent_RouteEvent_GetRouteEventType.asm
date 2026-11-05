# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dde0 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventType)
Paired Ghidra pseudocode: 0074DDE0_ScriptCore_RouteEvent_RouteEvent_GetRouteEventType.c
Window: [0x0074dde0, 0x0074de20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074de20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dde0: 8b 0d c4 50 1d 01 85 c9 56 74 2b 8b 44 24 08 50
0074ddf0: e8 1b d7 ff ff 8b f0 85 f6 74 1b 8b 16 8b 02 57
0074de00: 8b ce ff d0 8b 16 8b 42 04 0f b7 7e 18 8b ce ff
0074de10: d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dde0 <.text+0x34cde0>:
  74dde0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74dde6:	85 c9                                           	test   ecx,ecx
  74dde8:	56                                              	push   esi
  74dde9:	74 2b                                           	je     0x74de16
  74ddeb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74ddef:	50                                              	push   eax
  74ddf0:	e8 1b d7 ff ff                                  	call   0x74b510
  74ddf5:	8b f0                                           	mov    esi,eax
  74ddf7:	85 f6                                           	test   esi,esi
  74ddf9:	74 1b                                           	je     0x74de16
  74ddfb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74ddfd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74ddff:	57                                              	push   edi
  74de00:	8b ce                                           	mov    ecx,esi
  74de02:	ff d0                                           	call   eax
  74de04:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74de06:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74de09:	0f b7 7e 18                                     	movzx  edi,WORD PTR [esi+0x18]
  74de0d:	8b ce                                           	mov    ecx,esi
  74de0f:	ff d0                                           	call   eax
  74de11:	8b c7                                           	mov    eax,edi
  74de13:	5f                                              	pop    edi
  74de14:	5e                                              	pop    esi
  74de15:	c3                                              	ret
  74de16:	33 c0                                           	xor    eax,eax
  74de18:	5e                                              	pop    esi
  74de19:	c3                                              	ret
  74de1a:	cc                                              	int3
  74de1b:	cc                                              	int3
  74de1c:	cc                                              	int3
  74de1d:	cc                                              	int3
  74de1e:	cc                                              	int3
  74de1f:	cc                                              	int3
