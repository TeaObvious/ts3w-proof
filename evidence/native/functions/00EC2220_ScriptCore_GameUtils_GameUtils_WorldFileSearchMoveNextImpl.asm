# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2220 (ScriptCore.GameUtils::GameUtils_WorldFileSearchMoveNextImpl)
Paired Ghidra pseudocode: 00EC2220_ScriptCore_GameUtils_GameUtils_WorldFileSearchMoveNextImpl.c
Window: [0x00ec2220, 0x00ec2260) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2220: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00ec2230: 40 75 16 e8 58 71 8a ff 8b 10 8b c8 8b 82 cc 00
00ec2240: 00 00 56 ff d0 85 c0 75 04 32 c0 5e c3 8b c8 5e
00ec2250: e9 0b fd ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2220 <.text+0xac1220>:
  ec2220:	56                                              	push   esi
  ec2221:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec2225:	8b c6                                           	mov    eax,esi
  ec2227:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec222c:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec2231:	75 16                                           	jne    0xec2249
  ec2233:	e8 58 71 8a ff                                  	call   0x769390
  ec2238:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec223a:	8b c8                                           	mov    ecx,eax
  ec223c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec2242:	56                                              	push   esi
  ec2243:	ff d0                                           	call   eax
  ec2245:	85 c0                                           	test   eax,eax
  ec2247:	75 04                                           	jne    0xec224d
  ec2249:	32 c0                                           	xor    al,al
  ec224b:	5e                                              	pop    esi
  ec224c:	c3                                              	ret
  ec224d:	8b c8                                           	mov    ecx,eax
  ec224f:	5e                                              	pop    esi
  ec2250:	e9 0b fd ff ff                                  	jmp    0xec1f60
  ec2255:	cc                                              	int3
  ec2256:	cc                                              	int3
  ec2257:	cc                                              	int3
  ec2258:	cc                                              	int3
  ec2259:	cc                                              	int3
  ec225a:	cc                                              	int3
  ec225b:	cc                                              	int3
  ec225c:	cc                                              	int3
  ec225d:	cc                                              	int3
  ec225e:	cc                                              	int3
  ec225f:	cc                                              	int3
