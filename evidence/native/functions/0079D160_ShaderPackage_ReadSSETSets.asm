# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079d160, 0x0079d1df); analyst name ShaderPackage_ReadSSETSets.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079d160 <.text+0x39c160>:
  79d160:	51                   	push   ecx
  79d161:	53                   	push   ebx
  79d162:	56                   	push   esi
  79d163:	57                   	push   edi
  79d164:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  79d168:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  79d16b:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  79d16e:	8b f1                	mov    esi,ecx
  79d170:	50                   	push   eax
  79d171:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  79d175:	51                   	push   ecx
  79d176:	52                   	push   edx
  79d177:	e8 04 08 d4 ff       	call   0x4dd980
  79d17c:	83 c4 0c             	add    esp,0xc
  79d17f:	8b cf                	mov    ecx,edi
  79d181:	50                   	push   eax
  79d182:	e8 69 a8 03 00       	call   0x7d79f0
  79d187:	33 db                	xor    ebx,ebx
  79d189:	39 5c 24 0c          	cmp    DWORD PTR [esp+0xc],ebx
  79d18d:	76 49                	jbe    0x79d1d8
  79d18f:	55                   	push   ebp
  79d190:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  79d194:	55                   	push   ebp
  79d195:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  79d199:	50                   	push   eax
  79d19a:	57                   	push   edi
  79d19b:	8b ce                	mov    ecx,esi
  79d19d:	e8 5e fa ff ff       	call   0x79cc00
  79d1a2:	84 c0                	test   al,al
  79d1a4:	74 31                	je     0x79d1d7
  79d1a6:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79d1a9:	3b 46 14             	cmp    eax,DWORD PTR [esi+0x14]
  79d1ac:	8d 4e 0c             	lea    ecx,[esi+0xc]
  79d1af:	73 12                	jae    0x79d1c3
  79d1b1:	85 c0                	test   eax,eax
  79d1b3:	8d 50 04             	lea    edx,[eax+0x4]
  79d1b6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  79d1b9:	74 13                	je     0x79d1ce
  79d1bb:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  79d1bf:	89 08                	mov    DWORD PTR [eax],ecx
  79d1c1:	eb 0b                	jmp    0x79d1ce
  79d1c3:	8d 54 24 18          	lea    edx,[esp+0x18]
  79d1c7:	52                   	push   edx
  79d1c8:	50                   	push   eax
  79d1c9:	e8 52 52 1e 00       	call   0x982420
  79d1ce:	83 c3 01             	add    ebx,0x1
  79d1d1:	3b 5c 24 10          	cmp    ebx,DWORD PTR [esp+0x10]
  79d1d5:	72 bd                	jb     0x79d194
  79d1d7:	5d                   	pop    ebp
  79d1d8:	5f                   	pop    edi
  79d1d9:	5e                   	pop    esi
  79d1da:	5b                   	pop    ebx
  79d1db:	59                   	pop    ecx
  79d1dc:	c2 08 00             	ret    0x8
