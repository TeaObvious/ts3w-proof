# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777110 (ScriptCore.VisualEffect::Swarm_StopVisualEffect)
Paired Ghidra pseudocode: 00777110_ScriptCore_VisualEffect_Swarm_StopVisualEffect.c
Window: [0x00777110, 0x007771a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007771a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777110: 51 53 32 db e8 57 04 1c 00 85 c0 74 71 8b 4c 24
00777120: 10 8b 54 24 0c 56 51 52 8b c8 e8 51 0e 1c 00 8b
00777130: f0 85 f6 74 53 57 8d 7e 04 8b c7 b9 01 00 00 00
00777140: f0 0f c1 08 8b 15 90 9e 1e 01 52 8b ce e8 0e d1
00777150: 1b 00 85 c0 74 0e 8b 4c 24 1c 51 8b c8 e8 4e c5
00777160: 1c 00 b3 01 8b d7 83 c8 ff f0 0f c1 02 48 75 11
00777170: b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01 8b ce ff
00777180: d0 5f 5e 8a c3 5b 59 c3 5e 8a c3 5b 59 c3 8a c3
00777190: 5b 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777110 <.text+0x376110>:
  777110:	51                                              	push   ecx
  777111:	53                                              	push   ebx
  777112:	32 db                                           	xor    bl,bl
  777114:	e8 57 04 1c 00                                  	call   0x937570
  777119:	85 c0                                           	test   eax,eax
  77711b:	74 71                                           	je     0x77718e
  77711d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  777121:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  777125:	56                                              	push   esi
  777126:	51                                              	push   ecx
  777127:	52                                              	push   edx
  777128:	8b c8                                           	mov    ecx,eax
  77712a:	e8 51 0e 1c 00                                  	call   0x937f80
  77712f:	8b f0                                           	mov    esi,eax
  777131:	85 f6                                           	test   esi,esi
  777133:	74 53                                           	je     0x777188
  777135:	57                                              	push   edi
  777136:	8d 7e 04                                        	lea    edi,[esi+0x4]
  777139:	8b c7                                           	mov    eax,edi
  77713b:	b9 01 00 00 00                                  	mov    ecx,0x1
  777140:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  777144:	8b 15 90 9e 1e 01                               	mov    edx,DWORD PTR ds:0x11e9e90
  77714a:	52                                              	push   edx
  77714b:	8b ce                                           	mov    ecx,esi
  77714d:	e8 0e d1 1b 00                                  	call   0x934260
  777152:	85 c0                                           	test   eax,eax
  777154:	74 0e                                           	je     0x777164
  777156:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77715a:	51                                              	push   ecx
  77715b:	8b c8                                           	mov    ecx,eax
  77715d:	e8 4e c5 1c 00                                  	call   0x9436b0
  777162:	b3 01                                           	mov    bl,0x1
  777164:	8b d7                                           	mov    edx,edi
  777166:	83 c8 ff                                        	or     eax,0xffffffff
  777169:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  77716d:	48                                              	dec    eax
  77716e:	75 11                                           	jne    0x777181
  777170:	b9 01 00 00 00                                  	mov    ecx,0x1
  777175:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  777177:	8b 16                                           	mov    edx,DWORD PTR [esi]
  777179:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77717b:	6a 01                                           	push   0x1
  77717d:	8b ce                                           	mov    ecx,esi
  77717f:	ff d0                                           	call   eax
  777181:	5f                                              	pop    edi
  777182:	5e                                              	pop    esi
  777183:	8a c3                                           	mov    al,bl
  777185:	5b                                              	pop    ebx
  777186:	59                                              	pop    ecx
  777187:	c3                                              	ret
  777188:	5e                                              	pop    esi
  777189:	8a c3                                           	mov    al,bl
  77718b:	5b                                              	pop    ebx
  77718c:	59                                              	pop    ecx
  77718d:	c3                                              	ret
  77718e:	8a c3                                           	mov    al,bl
  777190:	5b                                              	pop    ebx
  777191:	59                                              	pop    ecx
  777192:	c3                                              	ret
  777193:	cc                                              	int3
  777194:	cc                                              	int3
  777195:	cc                                              	int3
  777196:	cc                                              	int3
  777197:	cc                                              	int3
  777198:	cc                                              	int3
  777199:	cc                                              	int3
  77719a:	cc                                              	int3
  77719b:	cc                                              	int3
  77719c:	cc                                              	int3
  77719d:	cc                                              	int3
  77719e:	cc                                              	int3
  77719f:	cc                                              	int3
