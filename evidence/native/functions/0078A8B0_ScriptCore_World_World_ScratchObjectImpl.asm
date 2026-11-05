# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a8b0 (ScriptCore.World::World_ScratchObjectImpl)
Paired Ghidra pseudocode: 0078A8B0_ScriptCore_World_World_ScratchObjectImpl.c
Window: [0x0078a8b0, 0x0078a920) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a8b0: 51 56 e8 b9 cc 1a 00 8b 4c 24 10 8b 54 24 0c 51
0078a8c0: 52 8b c8 e8 b8 d6 1a 00 8b f0 85 f6 74 4b 57 8d
0078a8d0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 a8
0078a8e0: a2 1e 01 52 8b ce e8 75 99 1a 00 85 c0 74 0c 8b
0078a8f0: 4c 24 18 51 8b c8 e8 05 38 1d 00 8b d7 83 c8 ff
0078a900: f0 0f c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16
0078a910: 8b 02 6a 01 8b ce ff d0 5f 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
0078a8b0 <.text+0x3898b0>:
  78a8b0:	51                                              	push   ecx
  78a8b1:	56                                              	push   esi
  78a8b2:	e8 b9 cc 1a 00                                  	call   0x937570
  78a8b7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78a8bb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a8bf:	51                                              	push   ecx
  78a8c0:	52                                              	push   edx
  78a8c1:	8b c8                                           	mov    ecx,eax
  78a8c3:	e8 b8 d6 1a 00                                  	call   0x937f80
  78a8c8:	8b f0                                           	mov    esi,eax
  78a8ca:	85 f6                                           	test   esi,esi
  78a8cc:	74 4b                                           	je     0x78a919
  78a8ce:	57                                              	push   edi
  78a8cf:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78a8d2:	8b c7                                           	mov    eax,edi
  78a8d4:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a8d9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a8dd:	8b 15 a8 a2 1e 01                               	mov    edx,DWORD PTR ds:0x11ea2a8
  78a8e3:	52                                              	push   edx
  78a8e4:	8b ce                                           	mov    ecx,esi
  78a8e6:	e8 75 99 1a 00                                  	call   0x934260
  78a8eb:	85 c0                                           	test   eax,eax
  78a8ed:	74 0c                                           	je     0x78a8fb
  78a8ef:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78a8f3:	51                                              	push   ecx
  78a8f4:	8b c8                                           	mov    ecx,eax
  78a8f6:	e8 05 38 1d 00                                  	call   0x95e100
  78a8fb:	8b d7                                           	mov    edx,edi
  78a8fd:	83 c8 ff                                        	or     eax,0xffffffff
  78a900:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  78a904:	48                                              	dec    eax
  78a905:	75 11                                           	jne    0x78a918
  78a907:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a90c:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  78a90e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78a910:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78a912:	6a 01                                           	push   0x1
  78a914:	8b ce                                           	mov    ecx,esi
  78a916:	ff d0                                           	call   eax
  78a918:	5f                                              	pop    edi
  78a919:	5e                                              	pop    esi
  78a91a:	59                                              	pop    ecx
  78a91b:	c3                                              	ret
  78a91c:	cc                                              	int3
  78a91d:	cc                                              	int3
  78a91e:	cc                                              	int3
  78a91f:	cc                                              	int3
