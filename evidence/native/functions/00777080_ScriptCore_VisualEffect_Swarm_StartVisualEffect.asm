# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777080 (ScriptCore.VisualEffect::Swarm_StartVisualEffect)
Paired Ghidra pseudocode: 00777080_ScriptCore_VisualEffect_Swarm_StartVisualEffect.c
Window: [0x00777080, 0x00777110) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777080: 51 53 32 db e8 e7 04 1c 00 85 c0 74 7b 8b 4c 24
00777090: 10 8b 54 24 0c 56 51 52 8b c8 e8 e1 0e 1c 00 8b
007770a0: f0 85 f6 74 5d 57 8d 7e 04 8b c7 b9 01 00 00 00
007770b0: f0 0f c1 08 8b 15 90 9e 1e 01 52 8b ce e8 9e d1
007770c0: 1b 00 85 c0 74 18 8b 54 24 1c 33 c9 38 4c 24 20
007770d0: 0f 95 c1 51 52 8b c8 e8 64 c5 1c 00 b3 01 8b c7
007770e0: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
007770f0: 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 8a c3 5b
00777100: 59 c3 5e 8a c3 5b 59 c3 8a c3 5b 59 c3 cc cc cc

LINEAR DISASSEMBLY
00777080 <.text+0x376080>:
  777080:	51                                              	push   ecx
  777081:	53                                              	push   ebx
  777082:	32 db                                           	xor    bl,bl
  777084:	e8 e7 04 1c 00                                  	call   0x937570
  777089:	85 c0                                           	test   eax,eax
  77708b:	74 7b                                           	je     0x777108
  77708d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  777091:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  777095:	56                                              	push   esi
  777096:	51                                              	push   ecx
  777097:	52                                              	push   edx
  777098:	8b c8                                           	mov    ecx,eax
  77709a:	e8 e1 0e 1c 00                                  	call   0x937f80
  77709f:	8b f0                                           	mov    esi,eax
  7770a1:	85 f6                                           	test   esi,esi
  7770a3:	74 5d                                           	je     0x777102
  7770a5:	57                                              	push   edi
  7770a6:	8d 7e 04                                        	lea    edi,[esi+0x4]
  7770a9:	8b c7                                           	mov    eax,edi
  7770ab:	b9 01 00 00 00                                  	mov    ecx,0x1
  7770b0:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7770b4:	8b 15 90 9e 1e 01                               	mov    edx,DWORD PTR ds:0x11e9e90
  7770ba:	52                                              	push   edx
  7770bb:	8b ce                                           	mov    ecx,esi
  7770bd:	e8 9e d1 1b 00                                  	call   0x934260
  7770c2:	85 c0                                           	test   eax,eax
  7770c4:	74 18                                           	je     0x7770de
  7770c6:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7770ca:	33 c9                                           	xor    ecx,ecx
  7770cc:	38 4c 24 20                                     	cmp    BYTE PTR [esp+0x20],cl
  7770d0:	0f 95 c1                                        	setne  cl
  7770d3:	51                                              	push   ecx
  7770d4:	52                                              	push   edx
  7770d5:	8b c8                                           	mov    ecx,eax
  7770d7:	e8 64 c5 1c 00                                  	call   0x943640
  7770dc:	b3 01                                           	mov    bl,0x1
  7770de:	8b c7                                           	mov    eax,edi
  7770e0:	83 c9 ff                                        	or     ecx,0xffffffff
  7770e3:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7770e7:	49                                              	dec    ecx
  7770e8:	75 11                                           	jne    0x7770fb
  7770ea:	ba 01 00 00 00                                  	mov    edx,0x1
  7770ef:	87 17                                           	xchg   DWORD PTR [edi],edx
  7770f1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7770f3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7770f5:	6a 01                                           	push   0x1
  7770f7:	8b ce                                           	mov    ecx,esi
  7770f9:	ff d2                                           	call   edx
  7770fb:	5f                                              	pop    edi
  7770fc:	5e                                              	pop    esi
  7770fd:	8a c3                                           	mov    al,bl
  7770ff:	5b                                              	pop    ebx
  777100:	59                                              	pop    ecx
  777101:	c3                                              	ret
  777102:	5e                                              	pop    esi
  777103:	8a c3                                           	mov    al,bl
  777105:	5b                                              	pop    ebx
  777106:	59                                              	pop    ecx
  777107:	c3                                              	ret
  777108:	8a c3                                           	mov    al,bl
  77710a:	5b                                              	pop    ebx
  77710b:	59                                              	pop    ecx
  77710c:	c3                                              	ret
  77710d:	cc                                              	int3
  77710e:	cc                                              	int3
  77710f:	cc                                              	int3
