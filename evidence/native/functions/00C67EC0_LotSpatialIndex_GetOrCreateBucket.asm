# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c67ec0, 0x00c67f4f); analyst name LotSpatialIndex_GetOrCreateBucket.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c67ec0 <.text+0x866ec0>:
  c67ec0:	83 ec 24             	sub    esp,0x24
  c67ec3:	56                   	push   esi
  c67ec4:	57                   	push   edi
  c67ec5:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  c67ec9:	57                   	push   edi
  c67eca:	8d 44 24 0c          	lea    eax,[esp+0xc]
  c67ece:	50                   	push   eax
  c67ecf:	8b f1                	mov    esi,ecx
  c67ed1:	e8 aa 90 84 ff       	call   0x4b0f80
  c67ed6:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c67ed9:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c67edc:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  c67ee0:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  c67ee3:	74 0b                	je     0xc67ef0
  c67ee5:	5f                   	pop    edi
  c67ee6:	83 c0 04             	add    eax,0x4
  c67ee9:	5e                   	pop    esi
  c67eea:	83 c4 24             	add    esp,0x24
  c67eed:	c2 04 00             	ret    0x4
  c67ef0:	53                   	push   ebx
  c67ef1:	8d 44 24 0c          	lea    eax,[esp+0xc]
  c67ef5:	33 db                	xor    ebx,ebx
  c67ef7:	50                   	push   eax
  c67ef8:	57                   	push   edi
  c67ef9:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c67efd:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c67f01:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  c67f05:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  c67f09:	c7 44 24 20 88 9a 07 01 	mov    DWORD PTR [esp+0x20],0x1079a88
  c67f11:	e8 7a 31 f1 ff       	call   0xb7b090
  c67f16:	88 5c 24 34          	mov    BYTE PTR [esp+0x34],bl
  c67f1a:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c67f1e:	51                   	push   ecx
  c67f1f:	50                   	push   eax
  c67f20:	8d 54 24 14          	lea    edx,[esp+0x14]
  c67f24:	52                   	push   edx
  c67f25:	8b ce                	mov    ecx,esi
  c67f27:	e8 b4 41 f1 ff       	call   0xb7c0e0
  c67f2c:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  c67f30:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  c67f34:	83 c6 04             	add    esi,0x4
  c67f37:	3b c3                	cmp    eax,ebx
  c67f39:	5b                   	pop    ebx
  c67f3a:	74 09                	je     0xc67f45
  c67f3c:	50                   	push   eax
  c67f3d:	e8 9e c5 87 ff       	call   0x4e44e0
  c67f42:	83 c4 04             	add    esp,0x4
  c67f45:	5f                   	pop    edi
  c67f46:	8b c6                	mov    eax,esi
  c67f48:	5e                   	pop    esi
  c67f49:	83 c4 24             	add    esp,0x24
  c67f4c:	c2 04 00             	ret    0x4
