# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00ab61b0, 0x00ab637b); analyst name Lot_SelectFloorLevelBelowHeight.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ab61b0 <.text+0x6b51b0>:
  ab61b0:	55                   	push   ebp
  ab61b1:	8b ec                	mov    ebp,esp
  ab61b3:	83 e4 f0             	and    esp,0xfffffff0
  ab61b6:	83 ec 44             	sub    esp,0x44
  ab61b9:	53                   	push   ebx
  ab61ba:	56                   	push   esi
  ab61bb:	8b f1                	mov    esi,ecx
  ab61bd:	83 be 90 02 00 00 00 	cmp    DWORD PTR [esi+0x290],0x0
  ab61c4:	8b 86 7c 01 00 00    	mov    eax,DWORD PTR [esi+0x17c]
  ab61ca:	57                   	push   edi
  ab61cb:	8b be 80 01 00 00    	mov    edi,DWORD PTR [esi+0x180]
  ab61d1:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  ab61d5:	0f 84 97 01 00 00    	je     0xab6372
  ab61db:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  ab61e2:	f3 0f 10 05 d8 24 fc 00 	movss  xmm0,DWORD PTR ds:0xfc24d8
  ab61ea:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  ab61ed:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  ab61f3:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  ab61f6:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  ab61fb:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  ab6201:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  ab6206:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  ab620c:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  ab6212:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  ab6218:	c7 44 24 2c 00 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  ab6220:	75 10                	jne    0xab6232
  ab6222:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  ab6229:	75 07                	jne    0xab6232
  ab622b:	c6 44 24 17 01       	mov    BYTE PTR [esp+0x17],0x1
  ab6230:	eb 5b                	jmp    0xab628d
  ab6232:	8b 8e 94 02 00 00    	mov    ecx,DWORD PTR [esi+0x294]
  ab6238:	85 c9                	test   ecx,ecx
  ab623a:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  ab623f:	74 4c                	je     0xab628d
  ab6241:	0f 57 d2             	xorps  xmm2,xmm2
  ab6244:	0f 2f c2             	comiss xmm0,xmm2
  ab6247:	72 44                	jb     0xab628d
  ab6249:	f3 0f 2a 9e 74 01 00 00 	cvtsi2ss xmm3,DWORD PTR [esi+0x174]
  ab6251:	0f 2f d8             	comiss xmm3,xmm0
  ab6254:	72 37                	jb     0xab628d
  ab6256:	0f 2f ca             	comiss xmm1,xmm2
  ab6259:	72 32                	jb     0xab628d
  ab625b:	f3 0f 2a 86 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  ab6263:	0f 2f c1             	comiss xmm0,xmm1
  ab6266:	72 25                	jb     0xab628d
  ab6268:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  ab626c:	83 ec 08             	sub    esp,0x8
  ab626f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  ab6273:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  ab6277:	d9 1c 24             	fstp   DWORD PTR [esp]
  ab627a:	e8 f1 41 03 00       	call   0xaea470
  ab627f:	d8 05 e4 3e 18 01    	fadd   DWORD PTR ds:0x1183ee4
  ab6285:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  ab6289:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  ab628d:	3b f8                	cmp    edi,eax
  ab628f:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  ab6292:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  ab6297:	0f 8c d5 00 00 00    	jl     0xab6372
  ab629d:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
  ab62a0:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab62a6:	8d 44 24 24          	lea    eax,[esp+0x24]
  ab62aa:	50                   	push   eax
  ab62ab:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  ab62af:	e8 dc 63 fd ff       	call   0xa8c690
  ab62b4:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  ab62b8:	d8 05 e4 3e 18 01    	fadd   DWORD PTR ds:0x1183ee4
  ab62be:	df f1                	fcomip st,st(1)
  ab62c0:	dd d8                	fstp   st(0)
  ab62c2:	0f 86 8e 00 00 00    	jbe    0xab6356
  ab62c8:	85 ff                	test   edi,edi
  ab62ca:	7e 0d                	jle    0xab62d9
  ab62cc:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  ab62d2:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  ab62d7:	76 7d                	jbe    0xab6356
  ab62d9:	84 db                	test   bl,bl
  ab62db:	0f 84 8f 00 00 00    	je     0xab6370
  ab62e1:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  ab62e6:	74 09                	je     0xab62f1
  ab62e8:	83 ff 01             	cmp    edi,0x1
  ab62eb:	0f 8e 7f 00 00 00    	jle    0xab6370
  ab62f1:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  ab62f7:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  ab62fd:	8a 44 24 2c          	mov    al,BYTE PTR [esp+0x2c]
  ab6301:	f3 0f 2c c8          	cvttss2si ecx,xmm0
  ab6305:	88 4c 24 18          	mov    BYTE PTR [esp+0x18],cl
  ab6309:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  ab630d:	f3 0f 2c d1          	cvttss2si edx,xmm1
  ab6311:	6a 01                	push   0x1
  ab6313:	83 c1 01             	add    ecx,0x1
  ab6316:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  ab631a:	6a 0f                	push   0xf
  ab631c:	8d 54 24 20          	lea    edx,[esp+0x20]
  ab6320:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  ab6324:	8b 8e 90 02 00 00    	mov    ecx,DWORD PTR [esi+0x290]
  ab632a:	52                   	push   edx
  ab632b:	88 44 24 26          	mov    BYTE PTR [esp+0x26],al
  ab632f:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  ab6335:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  ab633b:	e8 f0 7e fd ff       	call   0xa8e230
  ab6340:	84 c0                	test   al,al
  ab6342:	74 12                	je     0xab6356
  ab6344:	8d 44 24 30          	lea    eax,[esp+0x30]
  ab6348:	50                   	push   eax
  ab6349:	56                   	push   esi
  ab634a:	e8 71 98 01 00       	call   0xacfbc0
  ab634f:	83 c4 08             	add    esp,0x8
  ab6352:	84 c0                	test   al,al
  ab6354:	74 1a                	je     0xab6370
  ab6356:	83 ef 01             	sub    edi,0x1
  ab6359:	3b 7c 24 1c          	cmp    edi,DWORD PTR [esp+0x1c]
  ab635d:	0f 8d 3d ff ff ff    	jge    0xab62a0
  ab6363:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  ab6367:	5f                   	pop    edi
  ab6368:	5e                   	pop    esi
  ab6369:	5b                   	pop    ebx
  ab636a:	8b e5                	mov    esp,ebp
  ab636c:	5d                   	pop    ebp
  ab636d:	c2 08 00             	ret    0x8
  ab6370:	8b c7                	mov    eax,edi
  ab6372:	5f                   	pop    edi
  ab6373:	5e                   	pop    esi
  ab6374:	5b                   	pop    ebx
  ab6375:	8b e5                	mov    esp,ebp
  ab6377:	5d                   	pop    ebp
  ab6378:	c2 08 00             	ret    0x8
