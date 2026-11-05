# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007505f0 (ScriptCore.Route::Route_DestroyRoute)
Paired Ghidra pseudocode: 007505F0_ScriptCore_Route_Route_DestroyRoute.c
Window: [0x007505f0, 0x00750620) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007505f0: 8b 0d c4 50 1d 01 85 c9 74 1a 8b 44 24 04 8b d0
00750600: 81 e2 00 00 00 ff 81 fa 00 00 00 25 75 06 50 e8
00750610: 8c e0 ff ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007505f0 <.text+0x34f5f0>:
  7505f0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7505f6:	85 c9                                           	test   ecx,ecx
  7505f8:	74 1a                                           	je     0x750614
  7505fa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7505fe:	8b d0                                           	mov    edx,eax
  750600:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  750606:	81 fa 00 00 00 25                               	cmp    edx,0x25000000
  75060c:	75 06                                           	jne    0x750614
  75060e:	50                                              	push   eax
  75060f:	e8 8c e0 ff ff                                  	call   0x74e6a0
  750614:	c3                                              	ret
  750615:	cc                                              	int3
  750616:	cc                                              	int3
  750617:	cc                                              	int3
  750618:	cc                                              	int3
  750619:	cc                                              	int3
  75061a:	cc                                              	int3
  75061b:	cc                                              	int3
  75061c:	cc                                              	int3
  75061d:	cc                                              	int3
  75061e:	cc                                              	int3
  75061f:	cc                                              	int3
