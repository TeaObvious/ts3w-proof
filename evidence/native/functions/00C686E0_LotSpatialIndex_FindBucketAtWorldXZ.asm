# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c686e0, 0x00c68796); analyst name LotSpatialIndex_FindBucketAtWorldXZ.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c686e0 <.text+0x8676e0>:
  c686e0:	83 ec 08             	sub    esp,0x8
  c686e3:	56                   	push   esi
  c686e4:	8b f1                	mov    esi,ecx
  c686e6:	80 be cc 01 00 00 00 	cmp    BYTE PTR [esi+0x1cc],0x0
  c686ed:	74 05                	je     0xc686f4
  c686ef:	e8 cc fd ff ff       	call   0xc684c0
  c686f4:	d9 e8                	fld1
  c686f6:	81 c6 d4 01 00 00    	add    esi,0x1d4
  c686fc:	d8 76 fc             	fdiv   DWORD PTR [esi-0x4]
  c686ff:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  c68703:	d8 a6 e4 fe ff ff    	fsub   DWORD PTR [esi-0x11c]
  c68709:	d9 7c 24 14          	fnstcw WORD PTR [esp+0x14]
  c6870d:	0f b7 44 24 14       	movzx  eax,WORD PTR [esp+0x14]
  c68712:	d8 c9                	fmul   st,st(1)
  c68714:	0d 00 0c 00 00       	or     eax,0xc00
  c68719:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  c6871d:	d9 6c 24 04          	fldcw  WORD PTR [esp+0x4]
  c68721:	df 7c 24 04          	fistp  QWORD PTR [esp+0x4]
  c68725:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  c68729:	c1 e1 10             	shl    ecx,0x10
  c6872c:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
  c68730:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  c68734:	d8 a6 e0 fe ff ff    	fsub   DWORD PTR [esi-0x120]
  c6873a:	d9 7c 24 14          	fnstcw WORD PTR [esp+0x14]
  c6873e:	0f b7 44 24 14       	movzx  eax,WORD PTR [esp+0x14]
  c68743:	de c9                	fmulp  st(1),st
  c68745:	0d 00 0c 00 00       	or     eax,0xc00
  c6874a:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c6874e:	8d 44 24 14          	lea    eax,[esp+0x14]
  c68752:	50                   	push   eax
  c68753:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
  c68757:	df 7c 24 08          	fistp  QWORD PTR [esp+0x8]
  c6875b:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  c6875f:	0b ca                	or     ecx,edx
  c68761:	d9 6c 24 18          	fldcw  WORD PTR [esp+0x18]
  c68765:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  c68769:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  c6876d:	51                   	push   ecx
  c6876e:	8b ce                	mov    ecx,esi
  c68770:	e8 0b 88 84 ff       	call   0x4b0f80
  c68775:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c68778:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c6877b:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c6877f:	3b 04 91             	cmp    eax,DWORD PTR [ecx+edx*4]
  c68782:	5e                   	pop    esi
  c68783:	74 09                	je     0xc6878e
  c68785:	83 c0 04             	add    eax,0x4
  c68788:	83 c4 08             	add    esp,0x8
  c6878b:	c2 08 00             	ret    0x8
  c6878e:	33 c0                	xor    eax,eax
  c68790:	83 c4 08             	add    esp,0x8
  c68793:	c2 08 00             	ret    0x8
