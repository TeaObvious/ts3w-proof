# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939a80,0x00939b08); analyst name ParameterRecords_PartitionByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939a80 <.text+0x538a80>:
  939a80:	83 ec 10             	sub    esp,0x10
  939a83:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  939a87:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  939a8a:	8b 10                	mov    edx,DWORD PTR [eax]
  939a8c:	53                   	push   ebx
  939a8d:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  939a91:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  939a94:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  939a97:	55                   	push   ebp
  939a98:	56                   	push   esi
  939a99:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  939a9d:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  939aa1:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  939aa5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  939aa9:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  939aad:	57                   	push   edi
  939aae:	8b ff                	mov    edi,edi
  939ab0:	39 10                	cmp    DWORD PTR [eax],edx
  939ab2:	73 05                	jae    0x939ab9
  939ab4:	83 c0 10             	add    eax,0x10
  939ab7:	eb f7                	jmp    0x939ab0
  939ab9:	83 e9 10             	sub    ecx,0x10
  939abc:	3b 11                	cmp    edx,DWORD PTR [ecx]
  939abe:	73 07                	jae    0x939ac7
  939ac0:	83 e9 10             	sub    ecx,0x10
  939ac3:	3b 11                	cmp    edx,DWORD PTR [ecx]
  939ac5:	72 f9                	jb     0x939ac0
  939ac7:	3b c1                	cmp    eax,ecx
  939ac9:	73 35                	jae    0x939b00
  939acb:	8b 10                	mov    edx,DWORD PTR [eax]
  939acd:	8b 29                	mov    ebp,DWORD PTR [ecx]
  939acf:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  939ad2:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  939ad5:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  939ad8:	89 28                	mov    DWORD PTR [eax],ebp
  939ada:	8b 69 04             	mov    ebp,DWORD PTR [ecx+0x4]
  939add:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  939ae0:	8b 69 08             	mov    ebp,DWORD PTR [ecx+0x8]
  939ae3:	89 68 08             	mov    DWORD PTR [eax+0x8],ebp
  939ae6:	8b 69 0c             	mov    ebp,DWORD PTR [ecx+0xc]
  939ae9:	89 68 0c             	mov    DWORD PTR [eax+0xc],ebp
  939aec:	89 11                	mov    DWORD PTR [ecx],edx
  939aee:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  939af2:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  939af5:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  939af8:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  939afb:	83 c0 10             	add    eax,0x10
  939afe:	eb b0                	jmp    0x939ab0
  939b00:	5f                   	pop    edi
  939b01:	5e                   	pop    esi
  939b02:	5d                   	pop    ebp
  939b03:	5b                   	pop    ebx
  939b04:	83 c4 10             	add    esp,0x10
  939b07:	c3                   	ret
