# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785c20 (ScriptCore.World::World_ChangeStairStateImpl)
Paired Ghidra pseudocode: 00785C20_ScriptCore_World_World_ChangeStairStateImpl.c
Window: [0x00785c20, 0x00785c70) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785c20: 8b 0d c4 db 1e 01 85 c9 74 3f 8b 44 24 08 8b 54
00785c30: 24 04 6a 00 50 52 e8 d5 cb 4d 00 85 c0 74 2a 56
00785c40: 8b b0 b4 02 00 00 85 f6 74 1e 8b 44 24 14 8b 4c
00785c50: 24 10 50 51 8b ce e8 d5 18 39 00 8b 54 24 18 50
00785c60: 52 8b ce e8 98 82 39 00 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785c20 <.text+0x384c20>:
  785c20:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785c26:	85 c9                                           	test   ecx,ecx
  785c28:	74 3f                                           	je     0x785c69
  785c2a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  785c2e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785c32:	6a 00                                           	push   0x0
  785c34:	50                                              	push   eax
  785c35:	52                                              	push   edx
  785c36:	e8 d5 cb 4d 00                                  	call   0xc62810
  785c3b:	85 c0                                           	test   eax,eax
  785c3d:	74 2a                                           	je     0x785c69
  785c3f:	56                                              	push   esi
  785c40:	8b b0 b4 02 00 00                               	mov    esi,DWORD PTR [eax+0x2b4]
  785c46:	85 f6                                           	test   esi,esi
  785c48:	74 1e                                           	je     0x785c68
  785c4a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  785c4e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  785c52:	50                                              	push   eax
  785c53:	51                                              	push   ecx
  785c54:	8b ce                                           	mov    ecx,esi
  785c56:	e8 d5 18 39 00                                  	call   0xb17530
  785c5b:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  785c5f:	50                                              	push   eax
  785c60:	52                                              	push   edx
  785c61:	8b ce                                           	mov    ecx,esi
  785c63:	e8 98 82 39 00                                  	call   0xb1df00
  785c68:	5e                                              	pop    esi
  785c69:	c3                                              	ret
  785c6a:	cc                                              	int3
  785c6b:	cc                                              	int3
  785c6c:	cc                                              	int3
  785c6d:	cc                                              	int3
  785c6e:	cc                                              	int3
  785c6f:	cc                                              	int3
