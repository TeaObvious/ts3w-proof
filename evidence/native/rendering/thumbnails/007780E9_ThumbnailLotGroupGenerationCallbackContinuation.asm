TS3W.exe PC 1.67 — original bytes and saved Ghidra Listing
DB entry: 007780E9
Paired actual Ghidra pseudocode: 007780E9_ThumbnailLotGroupGenerationCallbackContinuation.c
Owned body inclusive: 007780E9..0077820F
Complete current Ghidra body (contiguous)
Preserved interval: [007780E9, 00778210)
Originalbytes read from identified pristine PE; independently decoded by GNU objdump.
Ghidra names/comments are analyst-assigned where stated; no runtime observed.

ORIGINAL BYTES
007780E9: 53 55 56 e8 9f 12 ff ff 8b f0 8b 06 8b 90 18 01
007780F9: 00 00 8b ce ff d2 85 ff 8b e8 8b da 0f 84 b1 00
00778109: 00 00 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a
00778119: 38 e8 e1 c3 d6 ff 83 c4 18 85 c0 0f 84 81 00 00
00778129: 00 8b 4c 24 50 51 53 55 8b c8 e8 38 fb ff ff 8b
00778139: f8 85 ff 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c
00778149: 24 4c 8b 54 24 48 8b 44 24 44 57 51 8b 4c 24 48
00778159: 52 8b 54 24 48 50 8b 44 24 48 51 8b 4c 24 24 52
00778169: 50 e8 51 92 5e 00 84 c0 74 3c 8b 44 24 50 8b 16
00778179: 8b 92 20 01 00 00 6a 00 50 6a ff 53 55 8b ce ff
00778189: d2 8b 06 8b 90 1c 01 00 00 8b ce ff d2 85 ff 74
00778199: 6e 8b 07 8b 50 08 8b cf ff d2 5e 5d 5b 5f 83 c4
007781A9: 24 c3 33 ff eb 98 85 ff 74 09 8b 07 8b 50 08 8b
007781B9: cf ff d2 8b 54 24 50 6a 00 8d 4c 24 18 51 53 bf
007781C9: f4 a6 fb 00 89 7c 24 20 c6 44 24 30 00 66 c7 44
007781D9: 24 2a 01 00 66 c7 44 24 28 00 00 8b 06 8b 80 30
007781E9: 01 00 00 55 52 8b ce ff d0 f6 44 24 1c 04 89 7c
007781F9: 24 14 74 0b 6a 00 8d 4c 24 18 e8 58 d5 d7 ff 5e
00778209: 5d 5b 5f 83 c4 24 c3

SAVED GHIDRA LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: ThumbnailLotGroupGenerationCallbackContinuation
Entry Point: 007780e9

007780e9: PUSH EBX ; Branch continuation from 007780A0: inherits its existing stack and EDI manager; standalone decompiler arguments are artifacts.
007780ea: PUSH EBP
007780eb: PUSH ESI
007780ec: CALL 0x00769390
007780f1: MOV ESI, EAX
007780f3: MOV EAX, dword ptr [ESI]
007780f5: MOV EDX, dword ptr [EAX + 0x118]
007780fb: MOV ECX, ESI
007780fd: CALL EDX
007780ff: TEST EDI, EDI
00778101: MOV EBP, EAX
00778103: MOV EBX, EDX
00778105: JZ 0x007781bc ; Captured manager absent: skip allocation/request and issue immediate host +130 callback below.
0077810b: PUSH 0x0
0077810d: PUSH 0x0
0077810f: PUSH 0x0
00778111: PUSH 0x0
00778113: PUSH 0x100e244
00778118: PUSH 0x38
0077811a: CALL 0x004e4500
0077811f: ADD ESP, 0x18
00778122: TEST EAX, EAX
00778124: JZ 0x007781ab
0077812a: MOV ECX, dword ptr [ESP + 0x50]
0077812e: PUSH ECX
0077812f: PUSH EBX
00778130: PUSH EBP
00778131: MOV ECX, EAX
00778133: CALL 0x00777c70
00778138: MOV EDI, EAX
0077813a: TEST EDI, EDI
0077813c: JZ 0x00778147
0077813e: MOV EDX, dword ptr [EDI]
00778140: MOV EAX, dword ptr [EDX + 0x4]
00778143: MOV ECX, EDI
00778145: CALL EAX
00778147: MOV ECX, dword ptr [ESP + 0x4c]
0077814b: MOV EDX, dword ptr [ESP + 0x48]
0077814f: MOV EAX, dword ptr [ESP + 0x44]
00778153: PUSH EDI
00778154: PUSH ECX
00778155: MOV ECX, dword ptr [ESP + 0x48]
00778159: PUSH EDX
0077815a: MOV EDX, dword ptr [ESP + 0x48]
0077815e: PUSH EAX
0077815f: MOV EAX, dword ptr [ESP + 0x48]
00778163: PUSH ECX
00778164: MOV ECX, dword ptr [ESP + 0x24]
00778168: PUSH EDX
00778169: PUSH EAX
0077816a: CALL 0x00d613c0
0077816f: TEST AL, AL ; Only AL selects admission branch; zero reaches immediate callback, nonzero reaches host +120 then +11C. No image-completion proof.
00778171: JZ 0x007781af
00778173: MOV EAX, dword ptr [ESP + 0x50]
00778177: MOV EDX, dword ptr [ESI]
00778179: MOV EDX, dword ptr [EDX + 0x120]
0077817f: PUSH 0x0
00778181: PUSH EAX
00778182: PUSH -0x1
00778184: PUSH EBX
00778185: PUSH EBP
00778186: MOV ECX, ESI
00778188: CALL EDX ; Host +120(token low/high, -1, delegate, 0), only after nonzero request AL; host scheduling semantics unresolved.
0077818a: MOV EAX, dword ptr [ESI]
0077818c: MOV EDX, dword ptr [EAX + 0x11c]
00778192: MOV ECX, ESI
00778194: CALL EDX ; Host +11C follows +120 before optional notifier +8; ownership/thread semantics require host proof.
00778196: TEST EDI, EDI
00778198: JZ 0x00778208
0077819a: MOV EAX, dword ptr [EDI]
0077819c: MOV EDX, dword ptr [EAX + 0x8]
0077819f: MOV ECX, EDI
007781a1: CALL EDX
007781a3: POP ESI
007781a4: POP EBP
007781a5: POP EBX
007781a6: POP EDI
007781a7: ADD ESP, 0x24
007781aa: RET
007781ab: XOR EDI, EDI
007781ad: JMP 0x00778147
007781af: TEST EDI, EDI
007781b1: JZ 0x007781bc
007781b3: MOV EAX, dword ptr [EDI]
007781b5: MOV EDX, dword ptr [EAX + 0x8]
007781b8: MOV ECX, EDI
007781ba: CALL EDX
007781bc: MOV EDX, dword ptr [ESP + 0x50]
007781c0: PUSH 0x0
007781c2: LEA ECX, [ESP + 0x18]
007781c6: PUSH ECX
007781c7: PUSH EBX
007781c8: MOV EDI, 0xfba6f4
007781cd: MOV dword ptr [ESP + 0x20], EDI
007781d1: MOV byte ptr [ESP + 0x30], 0x0
007781d6: MOV word ptr [ESP + 0x2a], 0x1 ; First UInt16 temporary store: higher-address word = 1; separate zero payload byte was stored earlier.
007781dd: MOV word ptr [ESP + 0x28], 0x0 ; Second UInt16 temporary store: lower-address word = 0 (physical order is 1 then 0). Variant semantics remain qualified.
007781e4: MOV EAX, dword ptr [ESI]
007781e6: MOV EAX, dword ptr [EAX + 0x130]
007781ec: PUSH EBP
007781ed: PUSH EDX
007781ee: MOV ECX, ESI
007781f0: CALL EAX ; Immediate host +130(delegate, token low/high, typed zero temporary, 0), reached on absent manager or zero request AL.
007781f2: TEST byte ptr [ESP + 0x1c], 0x4 ; Physical source is temporary stack flag BYTE & 0x04; conditionally call 4F5760 cleanup. Decompiler unaff_EBX is not the source.
007781f7: MOV dword ptr [ESP + 0x14], EDI
007781fb: JZ 0x00778208
007781fd: PUSH 0x0
007781ff: LEA ECX, [ESP + 0x18]
00778203: CALL 0x004f5760
00778208: POP ESI
00778209: POP EBP
0077820a: POP EBX
0077820b: POP EDI
0077820c: ADD ESP, 0x24
0077820f: RET

Total instructions: 115

INDEPENDENT PE DISASSEMBLY
007780e9 <.text+0x3770e9>:
  7780e9:	53                                              	push   ebx
  7780ea:	55                                              	push   ebp
  7780eb:	56                                              	push   esi
  7780ec:	e8 9f 12 ff ff                                  	call   0x769390
  7780f1:	8b f0                                           	mov    esi,eax
  7780f3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7780f5:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7780fb:	8b ce                                           	mov    ecx,esi
  7780fd:	ff d2                                           	call   edx
  7780ff:	85 ff                                           	test   edi,edi
  778101:	8b e8                                           	mov    ebp,eax
  778103:	8b da                                           	mov    ebx,edx
  778105:	0f 84 b1 00 00 00                               	je     0x7781bc
  77810b:	6a 00                                           	push   0x0
  77810d:	6a 00                                           	push   0x0
  77810f:	6a 00                                           	push   0x0
  778111:	6a 00                                           	push   0x0
  778113:	68 44 e2 00 01                                  	push   0x100e244
  778118:	6a 38                                           	push   0x38
  77811a:	e8 e1 c3 d6 ff                                  	call   0x4e4500
  77811f:	83 c4 18                                        	add    esp,0x18
  778122:	85 c0                                           	test   eax,eax
  778124:	0f 84 81 00 00 00                               	je     0x7781ab
  77812a:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  77812e:	51                                              	push   ecx
  77812f:	53                                              	push   ebx
  778130:	55                                              	push   ebp
  778131:	8b c8                                           	mov    ecx,eax
  778133:	e8 38 fb ff ff                                  	call   0x777c70
  778138:	8b f8                                           	mov    edi,eax
  77813a:	85 ff                                           	test   edi,edi
  77813c:	74 09                                           	je     0x778147
  77813e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778140:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778143:	8b cf                                           	mov    ecx,edi
  778145:	ff d0                                           	call   eax
  778147:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  77814b:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  77814f:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  778153:	57                                              	push   edi
  778154:	51                                              	push   ecx
  778155:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  778159:	52                                              	push   edx
  77815a:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  77815e:	50                                              	push   eax
  77815f:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  778163:	51                                              	push   ecx
  778164:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  778168:	52                                              	push   edx
  778169:	50                                              	push   eax
  77816a:	e8 51 92 5e 00                                  	call   0xd613c0
  77816f:	84 c0                                           	test   al,al
  778171:	74 3c                                           	je     0x7781af
  778173:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  778177:	8b 16                                           	mov    edx,DWORD PTR [esi]
  778179:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  77817f:	6a 00                                           	push   0x0
  778181:	50                                              	push   eax
  778182:	6a ff                                           	push   0xffffffff
  778184:	53                                              	push   ebx
  778185:	55                                              	push   ebp
  778186:	8b ce                                           	mov    ecx,esi
  778188:	ff d2                                           	call   edx
  77818a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77818c:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  778192:	8b ce                                           	mov    ecx,esi
  778194:	ff d2                                           	call   edx
  778196:	85 ff                                           	test   edi,edi
  778198:	74 6e                                           	je     0x778208
  77819a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77819c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77819f:	8b cf                                           	mov    ecx,edi
  7781a1:	ff d2                                           	call   edx
  7781a3:	5e                                              	pop    esi
  7781a4:	5d                                              	pop    ebp
  7781a5:	5b                                              	pop    ebx
  7781a6:	5f                                              	pop    edi
  7781a7:	83 c4 24                                        	add    esp,0x24
  7781aa:	c3                                              	ret
  7781ab:	33 ff                                           	xor    edi,edi
  7781ad:	eb 98                                           	jmp    0x778147
  7781af:	85 ff                                           	test   edi,edi
  7781b1:	74 09                                           	je     0x7781bc
  7781b3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7781b5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7781b8:	8b cf                                           	mov    ecx,edi
  7781ba:	ff d2                                           	call   edx
  7781bc:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  7781c0:	6a 00                                           	push   0x0
  7781c2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7781c6:	51                                              	push   ecx
  7781c7:	53                                              	push   ebx
  7781c8:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  7781cd:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7781d1:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  7781d6:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  7781dd:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  7781e4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7781e6:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  7781ec:	55                                              	push   ebp
  7781ed:	52                                              	push   edx
  7781ee:	8b ce                                           	mov    ecx,esi
  7781f0:	ff d0                                           	call   eax
  7781f2:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  7781f7:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7781fb:	74 0b                                           	je     0x778208
  7781fd:	6a 00                                           	push   0x0
  7781ff:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778203:	e8 58 d5 d7 ff                                  	call   0x4f5760
  778208:	5e                                              	pop    esi
  778209:	5d                                              	pop    ebp
  77820a:	5b                                              	pop    ebx
  77820b:	5f                                              	pop    edi
  77820c:	83 c4 24                                        	add    esp,0x24
  77820f:	c3                                              	ret
