# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095eff0 (VisualState_PublishDerivedObjectState)
Full Ghidra function-body envelope: 0x0095eff0..0x0095f173 (exclusive end)
Ghidra body ranges: [[0095eff0, 0095f172]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095eff0 <.text+0x55dff0>:
  95eff0:	55                   	push   ebp
  95eff1:	8b ec                	mov    ebp,esp
  95eff3:	83 e4 f0             	and    esp,0xfffffff0
  95eff6:	81 ec b8 00 00 00    	sub    esp,0xb8
  95effc:	53                   	push   ebx
  95effd:	56                   	push   esi
  95effe:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  95f001:	85 f6                	test   esi,esi
  95f003:	b3 01                	mov    bl,0x1
  95f005:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  95f00a:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  95f00f:	c6 44 24 10 00       	mov    BYTE PTR [esp+0x10],0x0
  95f014:	88 5c 24 1c          	mov    BYTE PTR [esp+0x1c],bl
  95f018:	88 5c 24 18          	mov    BYTE PTR [esp+0x18],bl
  95f01c:	0f 84 8a 00 00 00    	je     0x95f0ac
  95f022:	a1 a8 a2 1e 01       	mov    eax,ds:0x11ea2a8
  95f027:	50                   	push   eax
  95f028:	8b ce                	mov    ecx,esi
  95f02a:	e8 31 52 fd ff       	call   0x934260
  95f02f:	85 c0                	test   eax,eax
  95f031:	74 79                	je     0x95f0ac
  95f033:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95f036:	8b d1                	mov    edx,ecx
  95f038:	83 e2 39             	and    edx,0x39
  95f03b:	80 fa 39             	cmp    dl,0x39
  95f03e:	75 0d                	jne    0x95f04d
  95f040:	8b d1                	mov    edx,ecx
  95f042:	c1 ea 0b             	shr    edx,0xb
  95f045:	84 d3                	test   bl,dl
  95f047:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
  95f04b:	75 05                	jne    0x95f052
  95f04d:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  95f052:	8b d1                	mov    edx,ecx
  95f054:	c1 ea 02             	shr    edx,0x2
  95f057:	f6 c2 01             	test   dl,0x1
  95f05a:	74 11                	je     0x95f06d
  95f05c:	8b d1                	mov    edx,ecx
  95f05e:	c1 ea 0c             	shr    edx,0xc
  95f061:	f6 d2                	not    dl
  95f063:	f6 c2 01             	test   dl,0x1
  95f066:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  95f06b:	75 05                	jne    0x95f072
  95f06d:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  95f072:	84 c9                	test   cl,cl
  95f074:	78 10                	js     0x95f086
  95f076:	80 3d 4c cc 17 01 00 	cmp    BYTE PTR ds:0x117cc4c,0x0
  95f07d:	74 07                	je     0x95f086
  95f07f:	c6 44 24 10 01       	mov    BYTE PTR [esp+0x10],0x1
  95f084:	eb 0c                	jmp    0x95f092
  95f086:	8b d1                	mov    edx,ecx
  95f088:	c1 ea 06             	shr    edx,0x6
  95f08b:	80 e2 01             	and    dl,0x1
  95f08e:	88 54 24 10          	mov    BYTE PTR [esp+0x10],dl
  95f092:	8b c1                	mov    eax,ecx
  95f094:	8a d9                	mov    bl,cl
  95f096:	c1 e8 03             	shr    eax,0x3
  95f099:	24 01                	and    al,0x1
  95f09b:	c1 e9 0e             	shr    ecx,0xe
  95f09e:	80 e3 01             	and    bl,0x1
  95f0a1:	80 e1 01             	and    cl,0x1
  95f0a4:	88 44 24 1c          	mov    BYTE PTR [esp+0x1c],al
  95f0a8:	88 4c 24 18          	mov    BYTE PTR [esp+0x18],cl
  95f0ac:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  95f0af:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  95f0b2:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  95f0b6:	50                   	push   eax
  95f0b7:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  95f0bb:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  95f0bf:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  95f0c3:	51                   	push   ecx
  95f0c4:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  95f0c8:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  95f0cc:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  95f0d0:	52                   	push   edx
  95f0d1:	50                   	push   eax
  95f0d2:	51                   	push   ecx
  95f0d3:	8d 54 24 48          	lea    edx,[esp+0x48]
  95f0d7:	52                   	push   edx
  95f0d8:	8d 44 24 48          	lea    eax,[esp+0x48]
  95f0dc:	50                   	push   eax
  95f0dd:	56                   	push   esi
  95f0de:	c7 44 24 40 c4 8b 87 	mov    DWORD PTR [esp+0x40],0x4878bc4
  95f0e5:	04 
  95f0e6:	c7 44 24 44 00 00 00 	mov    DWORD PTR [esp+0x44],0x0
  95f0ed:	00 
  95f0ee:	e8 fd f8 ff ff       	call   0x95e9f0
  95f0f3:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  95f0f7:	51                   	push   ecx
  95f0f8:	e8 83 42 d3 ff       	call   0x693380
  95f0fd:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  95f100:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  95f103:	89 94 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],edx
  95f10a:	0f b6 cb             	movzx  ecx,bl
  95f10d:	8d 94 24 94 00 00 00 	lea    edx,[esp+0x94]
  95f114:	52                   	push   edx
  95f115:	c7 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],0xe128229b
  95f11c:	9b 22 28 e1 
  95f120:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],0x0
  95f127:	00 00 00 00 
  95f12b:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
  95f132:	89 8c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ecx
  95f139:	e8 42 42 d3 ff       	call   0x693380
  95f13e:	8b 8c 24 9c 00 00 00 	mov    ecx,DWORD PTR [esp+0x9c]
  95f145:	83 c4 28             	add    esp,0x28
  95f148:	85 c9                	test   ecx,ecx
  95f14a:	74 0e                	je     0x95f15a
  95f14c:	8b 01                	mov    eax,DWORD PTR [ecx]
  95f14e:	8b 00                	mov    eax,DWORD PTR [eax]
  95f150:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  95f157:	52                   	push   edx
  95f158:	ff d0                	call   eax
  95f15a:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  95f15e:	85 c9                	test   ecx,ecx
  95f160:	74 0b                	je     0x95f16d
  95f162:	8b 11                	mov    edx,DWORD PTR [ecx]
  95f164:	8b 12                	mov    edx,DWORD PTR [edx]
  95f166:	8d 44 24 30          	lea    eax,[esp+0x30]
  95f16a:	50                   	push   eax
  95f16b:	ff d2                	call   edx
  95f16d:	5e                   	pop    esi
  95f16e:	5b                   	pop    ebx
  95f16f:	8b e5                	mov    esp,ebp
  95f171:	5d                   	pop    ebp
  95f172:	c3                   	ret
