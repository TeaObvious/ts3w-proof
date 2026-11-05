# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568ba0, 0x00568c1e); analyst name AnimationClipController_Destroy.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568ba0 <.text+0x167ba0>:
  568ba0:	51                   	push   ecx
  568ba1:	56                   	push   esi
  568ba2:	8b f1                	mov    esi,ecx
  568ba4:	c7 06 b0 2b fc 00    	mov    DWORD PTR [esi],0xfc2bb0
  568baa:	c7 46 08 a4 2b fc 00 	mov    DWORD PTR [esi+0x8],0xfc2ba4
  568bb1:	c7 46 0c a0 2b fc 00 	mov    DWORD PTR [esi+0xc],0xfc2ba0
  568bb8:	8b 8e d8 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d8]
  568bbe:	85 c9                	test   ecx,ecx
  568bc0:	74 24                	je     0x568be6
  568bc2:	8d 41 04             	lea    eax,[ecx+0x4]
  568bc5:	57                   	push   edi
  568bc6:	8b d0                	mov    edx,eax
  568bc8:	83 cf ff             	or     edi,0xffffffff
  568bcb:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  568bcf:	4f                   	dec    edi
  568bd0:	5f                   	pop    edi
  568bd1:	75 13                	jne    0x568be6
  568bd3:	ba 01 00 00 00       	mov    edx,0x1
  568bd8:	87 10                	xchg   DWORD PTR [eax],edx
  568bda:	85 c9                	test   ecx,ecx
  568bdc:	74 08                	je     0x568be6
  568bde:	8b 01                	mov    eax,DWORD PTR [ecx]
  568be0:	8b 10                	mov    edx,DWORD PTR [eax]
  568be2:	6a 01                	push   0x1
  568be4:	ff d2                	call   edx
  568be6:	8b 8e d4 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d4]
  568bec:	85 c9                	test   ecx,ecx
  568bee:	74 07                	je     0x568bf7
  568bf0:	8b 01                	mov    eax,DWORD PTR [ecx]
  568bf2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  568bf5:	ff d2                	call   edx
  568bf7:	8b 8e d0 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d0]
  568bfd:	85 c9                	test   ecx,ecx
  568bff:	74 07                	je     0x568c08
  568c01:	8b 01                	mov    eax,DWORD PTR [ecx]
  568c03:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  568c06:	ff d2                	call   edx
  568c08:	8d 8e f0 04 00 00    	lea    ecx,[esi+0x4f0]
  568c0e:	e8 ad 01 01 00       	call   0x578dc0
  568c13:	8b ce                	mov    ecx,esi
  568c15:	5e                   	pop    esi
  568c16:	83 c4 04             	add    esp,0x4
  568c19:	e9 e2 d2 ff ff       	jmp    0x565f00
