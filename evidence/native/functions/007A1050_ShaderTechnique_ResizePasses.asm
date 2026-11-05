# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a1050, 0x007a1117); analyst name ShaderTechnique_ResizePasses.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a1050 <.text+0x3a0050>:
  7a1050:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7a1054:	53                   	push   ebx
  7a1055:	55                   	push   ebp
  7a1056:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  7a105a:	56                   	push   esi
  7a105b:	8b f1                	mov    esi,ecx
  7a105d:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  7a1060:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  7a1063:	3b e8                	cmp    ebp,eax
  7a1065:	57                   	push   edi
  7a1066:	0f 84 8b 00 00 00    	je     0x7a10f7
  7a106c:	83 3e 00             	cmp    DWORD PTR [esi],0x0
  7a106f:	74 34                	je     0x7a10a5
  7a1071:	33 ff                	xor    edi,edi
  7a1073:	85 c0                	test   eax,eax
  7a1075:	76 20                	jbe    0x7a1097
  7a1077:	33 db                	xor    ebx,ebx
  7a1079:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7a1080:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7a1082:	03 cb                	add    ecx,ebx
  7a1084:	e8 d7 d6 ff ff       	call   0x79e760
  7a1089:	83 c7 01             	add    edi,0x1
  7a108c:	81 c3 8c 01 00 00    	add    ebx,0x18c
  7a1092:	3b 7e 04             	cmp    edi,DWORD PTR [esi+0x4]
  7a1095:	72 e9                	jb     0x7a1080
  7a1097:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7a1099:	51                   	push   ecx
  7a109a:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7a10a0:	e8 cb 4d d4 ff       	call   0x4e5e70
  7a10a5:	8b c5                	mov    eax,ebp
  7a10a7:	69 c0 8c 01 00 00    	imul   eax,eax,0x18c
  7a10ad:	33 db                	xor    ebx,ebx
  7a10af:	53                   	push   ebx
  7a10b0:	89 6e 04             	mov    DWORD PTR [esi+0x4],ebp
  7a10b3:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7a10b9:	50                   	push   eax
  7a10ba:	e8 61 5e d4 ff       	call   0x4e6f20
  7a10bf:	3b c3                	cmp    eax,ebx
  7a10c1:	89 06                	mov    DWORD PTR [esi],eax
  7a10c3:	75 0c                	jne    0x7a10d1
  7a10c5:	5f                   	pop    edi
  7a10c6:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  7a10c9:	5e                   	pop    esi
  7a10ca:	5d                   	pop    ebp
  7a10cb:	32 c0                	xor    al,al
  7a10cd:	5b                   	pop    ebx
  7a10ce:	c2 08 00             	ret    0x8
  7a10d1:	33 ff                	xor    edi,edi
  7a10d3:	3b eb                	cmp    ebp,ebx
  7a10d5:	76 20                	jbe    0x7a10f7
  7a10d7:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7a10d9:	03 cb                	add    ecx,ebx
  7a10db:	74 23                	je     0x7a1100
  7a10dd:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  7a10e0:	52                   	push   edx
  7a10e1:	e8 ba d5 ff ff       	call   0x79e6a0
  7a10e6:	85 c0                	test   eax,eax
  7a10e8:	74 16                	je     0x7a1100
  7a10ea:	83 c7 01             	add    edi,0x1
  7a10ed:	81 c3 8c 01 00 00    	add    ebx,0x18c
  7a10f3:	3b fd                	cmp    edi,ebp
  7a10f5:	72 e0                	jb     0x7a10d7
  7a10f7:	5f                   	pop    edi
  7a10f8:	5e                   	pop    esi
  7a10f9:	5d                   	pop    ebp
  7a10fa:	b0 01                	mov    al,0x1
  7a10fc:	5b                   	pop    ebx
  7a10fd:	c2 08 00             	ret    0x8
  7a1100:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7a1104:	6a 00                	push   0x0
  7a1106:	50                   	push   eax
  7a1107:	8b ce                	mov    ecx,esi
  7a1109:	e8 42 ff ff ff       	call   0x7a1050
  7a110e:	5f                   	pop    edi
  7a110f:	5e                   	pop    esi
  7a1110:	5d                   	pop    ebp
  7a1111:	32 c0                	xor    al,al
  7a1113:	5b                   	pop    ebx
  7a1114:	c2 08 00             	ret    0x8
