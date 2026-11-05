# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00796550 (ScriptCore.World::World_RegisterCallbackMethodImpl)
Paired Ghidra pseudocode: 00796550_ScriptCore_World_World_RegisterCallbackMethodImpl.c
Window: [0x00796550, 0x00796590) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00796590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00796550: 57 8b 7c 24 08 83 ff 4b 77 30 56 e8 30 2e fd ff
00796560: 8b 4c 24 14 8b f0 8b 06 8b 50 58 51 8b ce ff d2
00796570: 8b 4c 24 10 50 8b 06 8b 50 58 51 8b ce ff d2 50
00796580: 57 e8 8a ff ff ff 83 c4 0c 5e 5f c3 cc cc cc cc

LINEAR DISASSEMBLY
00796550 <.text+0x395550>:
  796550:	57                                              	push   edi
  796551:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  796555:	83 ff 4b                                        	cmp    edi,0x4b
  796558:	77 30                                           	ja     0x79658a
  79655a:	56                                              	push   esi
  79655b:	e8 30 2e fd ff                                  	call   0x769390
  796560:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  796564:	8b f0                                           	mov    esi,eax
  796566:	8b 06                                           	mov    eax,DWORD PTR [esi]
  796568:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  79656b:	51                                              	push   ecx
  79656c:	8b ce                                           	mov    ecx,esi
  79656e:	ff d2                                           	call   edx
  796570:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  796574:	50                                              	push   eax
  796575:	8b 06                                           	mov    eax,DWORD PTR [esi]
  796577:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  79657a:	51                                              	push   ecx
  79657b:	8b ce                                           	mov    ecx,esi
  79657d:	ff d2                                           	call   edx
  79657f:	50                                              	push   eax
  796580:	57                                              	push   edi
  796581:	e8 8a ff ff ff                                  	call   0x796510
  796586:	83 c4 0c                                        	add    esp,0xc
  796589:	5e                                              	pop    esi
  79658a:	5f                                              	pop    edi
  79658b:	c3                                              	ret
  79658c:	cc                                              	int3
  79658d:	cc                                              	int3
  79658e:	cc                                              	int3
  79658f:	cc                                              	int3
