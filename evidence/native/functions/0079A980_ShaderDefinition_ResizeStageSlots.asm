# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079a980, 0x0079aa3a); analyst name ShaderDefinition_ResizeStageSlots.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a980 <.text+0x399980>:
  79a980:	53                   	push   ebx
  79a981:	55                   	push   ebp
  79a982:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  79a986:	56                   	push   esi
  79a987:	8b f1                	mov    esi,ecx
  79a989:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  79a98c:	3b e8                	cmp    ebp,eax
  79a98e:	57                   	push   edi
  79a98f:	0f 84 8b 00 00 00    	je     0x79aa20
  79a995:	33 db                	xor    ebx,ebx
  79a997:	39 5e 08             	cmp    DWORD PTR [esi+0x8],ebx
  79a99a:	74 35                	je     0x79a9d1
  79a99c:	33 ff                	xor    edi,edi
  79a99e:	3b c3                	cmp    eax,ebx
  79a9a0:	76 17                	jbe    0x79a9b9
  79a9a2:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79a9a5:	03 cb                	add    ecx,ebx
  79a9a7:	e8 b4 65 00 00       	call   0x7a0f60
  79a9ac:	83 c7 01             	add    edi,0x1
  79a9af:	83 c3 10             	add    ebx,0x10
  79a9b2:	3b 7e 0c             	cmp    edi,DWORD PTR [esi+0xc]
  79a9b5:	72 eb                	jb     0x79a9a2
  79a9b7:	33 db                	xor    ebx,ebx
  79a9b9:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  79a9bc:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  79a9c2:	50                   	push   eax
  79a9c3:	e8 a8 b4 d4 ff       	call   0x4e5e70
  79a9c8:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  79a9cb:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  79a9ce:	89 5e 14             	mov    DWORD PTR [esi+0x14],ebx
  79a9d1:	3b eb                	cmp    ebp,ebx
  79a9d3:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  79a9d6:	74 48                	je     0x79aa20
  79a9d8:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  79a9de:	53                   	push   ebx
  79a9df:	c1 e5 04             	shl    ebp,0x4
  79a9e2:	55                   	push   ebp
  79a9e3:	e8 38 c5 d4 ff       	call   0x4e6f20
  79a9e8:	3b c3                	cmp    eax,ebx
  79a9ea:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  79a9ed:	75 0c                	jne    0x79a9fb
  79a9ef:	5f                   	pop    edi
  79a9f0:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  79a9f3:	5e                   	pop    esi
  79a9f4:	5d                   	pop    ebp
  79a9f5:	32 c0                	xor    al,al
  79a9f7:	5b                   	pop    ebx
  79a9f8:	c2 04 00             	ret    0x4
  79a9fb:	33 ff                	xor    edi,edi
  79a9fd:	39 5e 0c             	cmp    DWORD PTR [esi+0xc],ebx
  79aa00:	76 1e                	jbe    0x79aa20
  79aa02:	33 ed                	xor    ebp,ebp
  79aa04:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79aa07:	03 cd                	add    ecx,ebp
  79aa09:	74 1e                	je     0x79aa29
  79aa0b:	56                   	push   esi
  79aa0c:	e8 af 64 00 00       	call   0x7a0ec0
  79aa11:	3b c3                	cmp    eax,ebx
  79aa13:	74 14                	je     0x79aa29
  79aa15:	83 c7 01             	add    edi,0x1
  79aa18:	83 c5 10             	add    ebp,0x10
  79aa1b:	3b 7e 0c             	cmp    edi,DWORD PTR [esi+0xc]
  79aa1e:	72 e4                	jb     0x79aa04
  79aa20:	5f                   	pop    edi
  79aa21:	5e                   	pop    esi
  79aa22:	5d                   	pop    ebp
  79aa23:	b0 01                	mov    al,0x1
  79aa25:	5b                   	pop    ebx
  79aa26:	c2 04 00             	ret    0x4
  79aa29:	53                   	push   ebx
  79aa2a:	8b ce                	mov    ecx,esi
  79aa2c:	e8 4f ff ff ff       	call   0x79a980
  79aa31:	5f                   	pop    edi
  79aa32:	5e                   	pop    esi
  79aa33:	5d                   	pop    ebp
  79aa34:	32 c0                	xor    al,al
  79aa36:	5b                   	pop    ebx
  79aa37:	c2 04 00             	ret    0x4
