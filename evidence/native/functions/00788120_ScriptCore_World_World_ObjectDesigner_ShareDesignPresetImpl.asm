# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788120 (ScriptCore.World::World_ObjectDesigner_ShareDesignPresetImpl)
Paired Ghidra pseudocode: 00788120_ScriptCore_World_World_ObjectDesigner_ShareDesignPresetImpl.c
Window: [0x00788120, 0x00788180) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788120: 56 57 e8 79 81 3a 00 8b f8 e8 62 12 fe ff 8b 4c
00788130: 24 18 8b f0 8b 44 24 1c 8b 16 8b 52 58 50 8b 44
00788140: 24 18 51 50 8b ce ff d2 8b 4c 24 18 50 8b 06 8b
00788150: 50 58 51 8b ce ff d2 8b 4c 24 18 50 8b 06 8b 50
00788160: 58 51 8b ce ff d2 50 8b cf e8 12 14 3b 00 5f 5e
00788170: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788120 <.text+0x387120>:
  788120:	56                                              	push   esi
  788121:	57                                              	push   edi
  788122:	e8 79 81 3a 00                                  	call   0xb302a0
  788127:	8b f8                                           	mov    edi,eax
  788129:	e8 62 12 fe ff                                  	call   0x769390
  78812e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  788132:	8b f0                                           	mov    esi,eax
  788134:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  788138:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78813a:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  78813d:	50                                              	push   eax
  78813e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  788142:	51                                              	push   ecx
  788143:	50                                              	push   eax
  788144:	8b ce                                           	mov    ecx,esi
  788146:	ff d2                                           	call   edx
  788148:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78814c:	50                                              	push   eax
  78814d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78814f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  788152:	51                                              	push   ecx
  788153:	8b ce                                           	mov    ecx,esi
  788155:	ff d2                                           	call   edx
  788157:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78815b:	50                                              	push   eax
  78815c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78815e:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  788161:	51                                              	push   ecx
  788162:	8b ce                                           	mov    ecx,esi
  788164:	ff d2                                           	call   edx
  788166:	50                                              	push   eax
  788167:	8b cf                                           	mov    ecx,edi
  788169:	e8 12 14 3b 00                                  	call   0xb39580
  78816e:	5f                                              	pop    edi
  78816f:	5e                                              	pop    esi
  788170:	c3                                              	ret
  788171:	cc                                              	int3
  788172:	cc                                              	int3
  788173:	cc                                              	int3
  788174:	cc                                              	int3
  788175:	cc                                              	int3
  788176:	cc                                              	int3
  788177:	cc                                              	int3
  788178:	cc                                              	int3
  788179:	cc                                              	int3
  78817a:	cc                                              	int3
  78817b:	cc                                              	int3
  78817c:	cc                                              	int3
  78817d:	cc                                              	int3
  78817e:	cc                                              	int3
  78817f:	cc                                              	int3
