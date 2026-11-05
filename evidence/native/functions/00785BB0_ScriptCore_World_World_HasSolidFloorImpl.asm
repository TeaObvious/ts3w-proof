# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785bb0 (ScriptCore.World::World_HasSolidFloorImpl)
Paired Ghidra pseudocode: 00785BB0_ScriptCore_World_World_HasSolidFloorImpl.c
Window: [0x00785bb0, 0x00785c20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785bb0: 51 8b 0d c4 db 1e 01 85 c9 74 56 8b 44 24 0c 8b
00785bc0: 54 24 08 6a 00 50 52 e8 44 cc 4d 00 85 c0 74 41
00785bd0: 8a 4c 24 10 8a 54 24 14 6a 01 6a 00 88 4c 24 08
00785be0: 8a 4c 24 20 6a 00 6a 01 88 4c 24 12 6a 01 8d 4c
00785bf0: 24 14 88 54 24 15 66 8b 54 24 14 51 50 66 89 54
00785c00: 24 1c c6 44 24 1f 0f e8 54 a6 34 00 83 c4 1c 59
00785c10: c3 32 c0 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785bb0 <.text+0x384bb0>:
  785bb0:	51                                              	push   ecx
  785bb1:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785bb7:	85 c9                                           	test   ecx,ecx
  785bb9:	74 56                                           	je     0x785c11
  785bbb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  785bbf:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  785bc3:	6a 00                                           	push   0x0
  785bc5:	50                                              	push   eax
  785bc6:	52                                              	push   edx
  785bc7:	e8 44 cc 4d 00                                  	call   0xc62810
  785bcc:	85 c0                                           	test   eax,eax
  785bce:	74 41                                           	je     0x785c11
  785bd0:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
  785bd4:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
  785bd8:	6a 01                                           	push   0x1
  785bda:	6a 00                                           	push   0x0
  785bdc:	88 4c 24 08                                     	mov    BYTE PTR [esp+0x8],cl
  785be0:	8a 4c 24 20                                     	mov    cl,BYTE PTR [esp+0x20]
  785be4:	6a 00                                           	push   0x0
  785be6:	6a 01                                           	push   0x1
  785be8:	88 4c 24 12                                     	mov    BYTE PTR [esp+0x12],cl
  785bec:	6a 01                                           	push   0x1
  785bee:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  785bf2:	88 54 24 15                                     	mov    BYTE PTR [esp+0x15],dl
  785bf6:	66 8b 54 24 14                                  	mov    dx,WORD PTR [esp+0x14]
  785bfb:	51                                              	push   ecx
  785bfc:	50                                              	push   eax
  785bfd:	66 89 54 24 1c                                  	mov    WORD PTR [esp+0x1c],dx
  785c02:	c6 44 24 1f 0f                                  	mov    BYTE PTR [esp+0x1f],0xf
  785c07:	e8 54 a6 34 00                                  	call   0xad0260
  785c0c:	83 c4 1c                                        	add    esp,0x1c
  785c0f:	59                                              	pop    ecx
  785c10:	c3                                              	ret
  785c11:	32 c0                                           	xor    al,al
  785c13:	59                                              	pop    ecx
  785c14:	c3                                              	ret
  785c15:	cc                                              	int3
  785c16:	cc                                              	int3
  785c17:	cc                                              	int3
  785c18:	cc                                              	int3
  785c19:	cc                                              	int3
  785c1a:	cc                                              	int3
  785c1b:	cc                                              	int3
  785c1c:	cc                                              	int3
  785c1d:	cc                                              	int3
  785c1e:	cc                                              	int3
  785c1f:	cc                                              	int3
