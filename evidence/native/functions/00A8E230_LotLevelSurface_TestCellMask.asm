# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00a8e230, 0x00a8e2ba); analyst name LotLevelSurface_TestCellMask.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a8e230 <.text+0x68d230>:
  a8e230:	56                   	push   esi
  a8e231:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  a8e235:	80 7e 02 00          	cmp    BYTE PTR [esi+0x2],0x0
  a8e239:	57                   	push   edi
  a8e23a:	8b f9                	mov    edi,ecx
  a8e23c:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  a8e23f:	56                   	push   esi
  a8e240:	75 4f                	jne    0xa8e291
  a8e242:	80 b9 bc 04 00 00 00 	cmp    BYTE PTR [ecx+0x4bc],0x0
  a8e249:	74 07                	je     0xa8e252
  a8e24b:	e8 20 94 d7 ff       	call   0x807670
  a8e250:	eb 44                	jmp    0xa8e296
  a8e252:	e8 19 a7 dd ff       	call   0x868970
  a8e257:	84 c0                	test   al,al
  a8e259:	74 2f                	je     0xa8e28a
  a8e25b:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  a8e260:	74 28                	je     0xa8e28a
  a8e262:	66 8b 16             	mov    dx,WORD PTR [esi]
  a8e265:	8a 4c 24 10          	mov    cl,BYTE PTR [esp+0x10]
  a8e269:	8a 46 02             	mov    al,BYTE PTR [esi+0x2]
  a8e26c:	66 89 54 24 14       	mov    WORD PTR [esp+0x14],dx
  a8e271:	8d 54 24 14          	lea    edx,[esp+0x14]
  a8e275:	88 4c 24 17          	mov    BYTE PTR [esp+0x17],cl
  a8e279:	52                   	push   edx
  a8e27a:	8b cf                	mov    ecx,edi
  a8e27c:	88 44 24 1a          	mov    BYTE PTR [esp+0x1a],al
  a8e280:	e8 8b e8 ff ff       	call   0xa8cb10
  a8e285:	5f                   	pop    edi
  a8e286:	5e                   	pop    esi
  a8e287:	c2 0c 00             	ret    0xc
  a8e28a:	5f                   	pop    edi
  a8e28b:	b0 01                	mov    al,0x1
  a8e28d:	5e                   	pop    esi
  a8e28e:	c2 0c 00             	ret    0xc
  a8e291:	e8 da a6 dd ff       	call   0x868970
  a8e296:	84 c0                	test   al,al
  a8e298:	74 19                	je     0xa8e2b3
  a8e29a:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  a8e29e:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  a8e2a2:	50                   	push   eax
  a8e2a3:	6a 00                	push   0x0
  a8e2a5:	51                   	push   ecx
  a8e2a6:	56                   	push   esi
  a8e2a7:	8b cf                	mov    ecx,edi
  a8e2a9:	e8 52 f0 ff ff       	call   0xa8d300
  a8e2ae:	5f                   	pop    edi
  a8e2af:	5e                   	pop    esi
  a8e2b0:	c2 0c 00             	ret    0xc
  a8e2b3:	5f                   	pop    edi
  a8e2b4:	32 c0                	xor    al,al
  a8e2b6:	5e                   	pop    esi
  a8e2b7:	c2 0c 00             	ret    0xc
