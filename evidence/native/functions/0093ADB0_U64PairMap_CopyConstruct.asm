# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093adb0 <.text+0x539db0>:
  93adb0:	55                   	push   ebp
  93adb1:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  93adb5:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  93adb8:	57                   	push   edi
  93adb9:	8b f9                	mov    edi,ecx
  93adbb:	89 07                	mov    DWORD PTR [edi],eax
  93adbd:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  93adc0:	89 4f 08             	mov    DWORD PTR [edi+0x8],ecx
  93adc3:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  93adc6:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
  93adc9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  93adcc:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  93adcf:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  93add2:	89 4f 14             	mov    DWORD PTR [edi+0x14],ecx
  93add5:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  93add8:	89 57 18             	mov    DWORD PTR [edi+0x18],edx
  93addb:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  93adde:	33 c9                	xor    ecx,ecx
  93ade0:	89 47 1c             	mov    DWORD PTR [edi+0x1c],eax
  93ade3:	39 4f 0c             	cmp    DWORD PTR [edi+0xc],ecx
  93ade6:	0f 84 d7 00 00 00    	je     0x93aec3
  93adec:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  93adef:	53                   	push   ebx
  93adf0:	56                   	push   esi
  93adf1:	68 e7 00 00 00       	push   0xe7
  93adf6:	68 88 99 f9 00       	push   0xf99988
  93adfb:	51                   	push   ecx
  93adfc:	8b 4f 1c             	mov    ecx,DWORD PTR [edi+0x1c]
  93adff:	8d 34 85 00 00 00 00 	lea    esi,[eax*4+0x0]
  93ae06:	68 00 00 40 00       	push   0x400000
  93ae0b:	51                   	push   ecx
  93ae0c:	8d 56 04             	lea    edx,[esi+0x4]
  93ae0f:	52                   	push   edx
  93ae10:	e8 eb 96 ba ff       	call   0x4e4500
  93ae15:	56                   	push   esi
  93ae16:	8b d8                	mov    ebx,eax
  93ae18:	6a 00                	push   0x0
  93ae1a:	53                   	push   ebx
  93ae1b:	e8 78 44 64 00       	call   0xf7f298
  93ae20:	c7 04 1e ff ff ff ff 	mov    DWORD PTR [esi+ebx*1],0xffffffff
  93ae27:	33 c9                	xor    ecx,ecx
  93ae29:	83 c4 24             	add    esp,0x24
  93ae2c:	89 5f 04             	mov    DWORD PTR [edi+0x4],ebx
  93ae2f:	39 4d 08             	cmp    DWORD PTR [ebp+0x8],ecx
  93ae32:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  93ae36:	0f 86 7e 00 00 00    	jbe    0x93aeba
  93ae3c:	8d 64 24 00          	lea    esp,[esp+0x0]
  93ae40:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  93ae43:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  93ae46:	8d 04 8d 00 00 00 00 	lea    eax,[ecx*4+0x0]
  93ae4d:	8b 34 10             	mov    esi,DWORD PTR [eax+edx*1]
  93ae50:	03 d8                	add    ebx,eax
  93ae52:	85 f6                	test   esi,esi
  93ae54:	74 58                	je     0x93aeae
  93ae56:	eb 08                	jmp    0x93ae60
  93ae58:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  93ae5f:	90                   	nop
  93ae60:	8b 47 1c             	mov    eax,DWORD PTR [edi+0x1c]
  93ae63:	68 e7 00 00 00       	push   0xe7
  93ae68:	68 88 99 f9 00       	push   0xf99988
  93ae6d:	6a 00                	push   0x0
  93ae6f:	6a 00                	push   0x0
  93ae71:	50                   	push   eax
  93ae72:	6a 18                	push   0x18
  93ae74:	e8 87 96 ba ff       	call   0x4e4500
  93ae79:	83 c4 18             	add    esp,0x18
  93ae7c:	85 c0                	test   eax,eax
  93ae7e:	74 16                	je     0x93ae96
  93ae80:	8b 0e                	mov    ecx,DWORD PTR [esi]
  93ae82:	89 08                	mov    DWORD PTR [eax],ecx
  93ae84:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  93ae87:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  93ae8a:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  93ae8d:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  93ae90:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  93ae93:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  93ae96:	8d 48 10             	lea    ecx,[eax+0x10]
  93ae99:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
  93ae9f:	89 03                	mov    DWORD PTR [ebx],eax
  93aea1:	8b 76 10             	mov    esi,DWORD PTR [esi+0x10]
  93aea4:	85 f6                	test   esi,esi
  93aea6:	8b d9                	mov    ebx,ecx
  93aea8:	75 b6                	jne    0x93ae60
  93aeaa:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  93aeae:	83 c1 01             	add    ecx,0x1
  93aeb1:	3b 4d 08             	cmp    ecx,DWORD PTR [ebp+0x8]
  93aeb4:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  93aeb8:	72 86                	jb     0x93ae40
  93aeba:	5e                   	pop    esi
  93aebb:	5b                   	pop    ebx
  93aebc:	8b c7                	mov    eax,edi
  93aebe:	5f                   	pop    edi
  93aebf:	5d                   	pop    ebp
  93aec0:	c2 04 00             	ret    0x4
  93aec3:	c7 47 08 01 00 00 00 	mov    DWORD PTR [edi+0x8],0x1
  93aeca:	c7 47 04 00 d9 14 01 	mov    DWORD PTR [edi+0x4],0x114d900
  93aed1:	89 4f 0c             	mov    DWORD PTR [edi+0xc],ecx
  93aed4:	89 4f 18             	mov    DWORD PTR [edi+0x18],ecx
  93aed7:	8b c7                	mov    eax,edi
  93aed9:	5f                   	pop    edi
  93aeda:	5d                   	pop    ebp
  93aedb:	c2 04 00             	ret    0x4
