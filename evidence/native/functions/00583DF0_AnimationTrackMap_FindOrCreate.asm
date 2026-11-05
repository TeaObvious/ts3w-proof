# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00583df0, 0x00583eb7); analyst name AnimationTrackMap_FindOrCreate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00583df0 <.text+0x182df0>:
  583df0:	53                   	push   ebx
  583df1:	8b d9                	mov    ebx,ecx
  583df3:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  583df6:	56                   	push   esi
  583df7:	8d 73 04             	lea    esi,[ebx+0x4]
  583dfa:	3b ce                	cmp    ecx,esi
  583dfc:	57                   	push   edi
  583dfd:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  583e01:	74 12                	je     0x583e15
  583e03:	39 79 0c             	cmp    DWORD PTR [ecx+0xc],edi
  583e06:	8d 41 08             	lea    eax,[ecx+0x8]
  583e09:	0f 84 a2 00 00 00    	je     0x583eb1
  583e0f:	8b 09                	mov    ecx,DWORD PTR [ecx]
  583e11:	3b ce                	cmp    ecx,esi
  583e13:	75 ee                	jne    0x583e03
  583e15:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  583e18:	68 e7 00 00 00       	push   0xe7
  583e1d:	68 88 99 f9 00       	push   0xf99988
  583e22:	6a 00                	push   0x0
  583e24:	6a 00                	push   0x0
  583e26:	50                   	push   eax
  583e27:	6a 10                	push   0x10
  583e29:	e8 d2 06 f6 ff       	call   0x4e4500
  583e2e:	8d 48 08             	lea    ecx,[eax+0x8]
  583e31:	83 c4 18             	add    esp,0x18
  583e34:	85 c9                	test   ecx,ecx
  583e36:	74 06                	je     0x583e3e
  583e38:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
  583e3e:	89 30                	mov    DWORD PTR [eax],esi
  583e40:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  583e43:	6a 00                	push   0x0
  583e45:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  583e48:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  583e4b:	6a 00                	push   0x0
  583e4d:	89 02                	mov    DWORD PTR [edx],eax
  583e4f:	6a 00                	push   0x0
  583e51:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  583e54:	8b 73 08             	mov    esi,DWORD PTR [ebx+0x8]
  583e57:	6a 00                	push   0x0
  583e59:	68 b8 ca fc 00       	push   0xfccab8
  583e5e:	83 c6 08             	add    esi,0x8
  583e61:	6a 70                	push   0x70
  583e63:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
  583e66:	e8 95 06 f6 ff       	call   0x4e4500
  583e6b:	83 c4 18             	add    esp,0x18
  583e6e:	85 c0                	test   eax,eax
  583e70:	74 0e                	je     0x583e80
  583e72:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  583e75:	57                   	push   edi
  583e76:	51                   	push   ecx
  583e77:	8b c8                	mov    ecx,eax
  583e79:	e8 12 3a fe ff       	call   0x567890
  583e7e:	eb 02                	jmp    0x583e82
  583e80:	33 c0                	xor    eax,eax
  583e82:	8b 0e                	mov    ecx,DWORD PTR [esi]
  583e84:	3b c1                	cmp    eax,ecx
  583e86:	74 27                	je     0x583eaf
  583e88:	85 c0                	test   eax,eax
  583e8a:	ba 01 00 00 00       	mov    edx,0x1
  583e8f:	74 03                	je     0x583e94
  583e91:	01 50 04             	add    DWORD PTR [eax+0x4],edx
  583e94:	85 c9                	test   ecx,ecx
  583e96:	89 06                	mov    DWORD PTR [esi],eax
  583e98:	74 15                	je     0x583eaf
  583e9a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  583e9d:	83 c0 ff             	add    eax,0xffffffff
  583ea0:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  583ea3:	75 0a                	jne    0x583eaf
  583ea5:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  583ea8:	8b 01                	mov    eax,DWORD PTR [ecx]
  583eaa:	52                   	push   edx
  583eab:	8b 10                	mov    edx,DWORD PTR [eax]
  583ead:	ff d2                	call   edx
  583eaf:	8b c6                	mov    eax,esi
  583eb1:	5f                   	pop    edi
  583eb2:	5e                   	pop    esi
  583eb3:	5b                   	pop    ebx
  583eb4:	c2 04 00             	ret    0x4
