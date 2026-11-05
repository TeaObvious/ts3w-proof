# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079b000, 0x0079b0d2); analyst name ShaderSamplerDatabase_ReadSMPS.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079b000 <.text+0x39a000>:
  79b000:	83 ec 08             	sub    esp,0x8
  79b003:	55                   	push   ebp
  79b004:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  79b008:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  79b00b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  79b00e:	57                   	push   edi
  79b00f:	8b f9                	mov    edi,ecx
  79b011:	50                   	push   eax
  79b012:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  79b016:	51                   	push   ecx
  79b017:	52                   	push   edx
  79b018:	e8 63 29 d4 ff       	call   0x4dd980
  79b01d:	83 c4 0c             	add    esp,0xc
  79b020:	8b cd                	mov    ecx,ebp
  79b022:	50                   	push   eax
  79b023:	e8 c8 c9 03 00       	call   0x7d79f0
  79b028:	81 7c 24 0c 53 4d 50 53 	cmp    DWORD PTR [esp+0xc],0x53504d53
  79b030:	74 0a                	je     0x79b03c
  79b032:	5f                   	pop    edi
  79b033:	32 c0                	xor    al,al
  79b035:	5d                   	pop    ebp
  79b036:	83 c4 08             	add    esp,0x8
  79b039:	c2 04 00             	ret    0x4
  79b03c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  79b03f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  79b042:	53                   	push   ebx
  79b043:	50                   	push   eax
  79b044:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  79b048:	51                   	push   ecx
  79b049:	52                   	push   edx
  79b04a:	e8 31 29 d4 ff       	call   0x4dd980
  79b04f:	83 c4 0c             	add    esp,0xc
  79b052:	8b cd                	mov    ecx,ebp
  79b054:	50                   	push   eax
  79b055:	e8 96 c9 03 00       	call   0x7d79f0
  79b05a:	33 db                	xor    ebx,ebx
  79b05c:	39 5c 24 0c          	cmp    DWORD PTR [esp+0xc],ebx
  79b060:	76 65                	jbe    0x79b0c7
  79b062:	56                   	push   esi
  79b063:	6a 00                	push   0x0
  79b065:	6a 00                	push   0x0
  79b067:	6a 00                	push   0x0
  79b069:	6a 00                	push   0x0
  79b06b:	68 2c 69 01 01       	push   0x101692c
  79b070:	6a 0c                	push   0xc
  79b072:	e8 89 94 d4 ff       	call   0x4e4500
  79b077:	83 c4 18             	add    esp,0x18
  79b07a:	85 c0                	test   eax,eax
  79b07c:	74 0b                	je     0x79b089
  79b07e:	8b c8                	mov    ecx,eax
  79b080:	e8 2b 4f f3 ff       	call   0x6cffb0
  79b085:	8b f0                	mov    esi,eax
  79b087:	eb 02                	jmp    0x79b08b
  79b089:	33 f6                	xor    esi,esi
  79b08b:	83 c3 01             	add    ebx,0x1
  79b08e:	55                   	push   ebp
  79b08f:	8b ce                	mov    ecx,esi
  79b091:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  79b095:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  79b098:	e8 13 f5 ff ff       	call   0x79a5b0
  79b09d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  79b0a0:	3b 47 08             	cmp    eax,DWORD PTR [edi+0x8]
  79b0a3:	73 0e                	jae    0x79b0b3
  79b0a5:	85 c0                	test   eax,eax
  79b0a7:	8d 48 04             	lea    ecx,[eax+0x4]
  79b0aa:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  79b0ad:	74 11                	je     0x79b0c0
  79b0af:	89 30                	mov    DWORD PTR [eax],esi
  79b0b1:	eb 0d                	jmp    0x79b0c0
  79b0b3:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  79b0b7:	52                   	push   edx
  79b0b8:	50                   	push   eax
  79b0b9:	8b cf                	mov    ecx,edi
  79b0bb:	e8 60 73 1e 00       	call   0x982420
  79b0c0:	3b 5c 24 10          	cmp    ebx,DWORD PTR [esp+0x10]
  79b0c4:	72 9d                	jb     0x79b063
  79b0c6:	5e                   	pop    esi
  79b0c7:	5b                   	pop    ebx
  79b0c8:	5f                   	pop    edi
  79b0c9:	b0 01                	mov    al,0x1
  79b0cb:	5d                   	pop    ebp
  79b0cc:	83 c4 08             	add    esp,0x8
  79b0cf:	c2 04 00             	ret    0x4
