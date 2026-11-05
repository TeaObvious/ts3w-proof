# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939b10,0x00939bae); analyst name ParameterRecords_PartialSortHeapByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939b10 <.text+0x538b10>:
  939b10:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  939b14:	83 ec 10             	sub    esp,0x10
  939b17:	53                   	push   ebx
  939b18:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  939b1c:	55                   	push   ebp
  939b1d:	56                   	push   esi
  939b1e:	57                   	push   edi
  939b1f:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  939b23:	50                   	push   eax
  939b24:	53                   	push   ebx
  939b25:	57                   	push   edi
  939b26:	e8 05 fe ff ff       	call   0x939930
  939b2b:	8b 6c 24 3c          	mov    ebp,DWORD PTR [esp+0x3c]
  939b2f:	83 c4 0c             	add    esp,0xc
  939b32:	3b 5c 24 2c          	cmp    ebx,DWORD PTR [esp+0x2c]
  939b36:	8b f3                	mov    esi,ebx
  939b38:	73 61                	jae    0x939b9b
  939b3a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  939b40:	8b 0e                	mov    ecx,DWORD PTR [esi]
  939b42:	3b 0f                	cmp    ecx,DWORD PTR [edi]
  939b44:	73 4c                	jae    0x939b92
  939b46:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  939b49:	8b d1                	mov    edx,ecx
  939b4b:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  939b4e:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  939b52:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  939b55:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  939b59:	8b 07                	mov    eax,DWORD PTR [edi]
  939b5b:	89 06                	mov    DWORD PTR [esi],eax
  939b5d:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  939b61:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  939b64:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  939b67:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  939b6b:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  939b6e:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  939b71:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  939b74:	55                   	push   ebp
  939b75:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  939b79:	51                   	push   ecx
  939b7a:	8b d3                	mov    edx,ebx
  939b7c:	2b d7                	sub    edx,edi
  939b7e:	6a 00                	push   0x0
  939b80:	c1 fa 04             	sar    edx,0x4
  939b83:	52                   	push   edx
  939b84:	6a 00                	push   0x0
  939b86:	57                   	push   edi
  939b87:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  939b8a:	e8 01 fd ff ff       	call   0x939890
  939b8f:	83 c4 18             	add    esp,0x18
  939b92:	83 c6 10             	add    esi,0x10
  939b95:	3b 74 24 2c          	cmp    esi,DWORD PTR [esp+0x2c]
  939b99:	72 a5                	jb     0x939b40
  939b9b:	55                   	push   ebp
  939b9c:	53                   	push   ebx
  939b9d:	57                   	push   edi
  939b9e:	e8 0d fe ff ff       	call   0x9399b0
  939ba3:	83 c4 0c             	add    esp,0xc
  939ba6:	5f                   	pop    edi
  939ba7:	5e                   	pop    esi
  939ba8:	5d                   	pop    ebp
  939ba9:	5b                   	pop    ebx
  939baa:	83 c4 10             	add    esp,0x10
  939bad:	c3                   	ret
