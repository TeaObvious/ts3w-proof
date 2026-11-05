# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009a1980,0x009a19da); analyst name DownloadContent_ResetTravelBinDatabase.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009a1980 <.text+0x5a0980>:
  9a1980:	56                   	push   esi
  9a1981:	57                   	push   edi
  9a1982:	8b f9                	mov    edi,ecx
  9a1984:	8b b7 88 00 00 00    	mov    esi,DWORD PTR [edi+0x88]
  9a198a:	85 f6                	test   esi,esi
  9a198c:	74 49                	je     0x9a19d7
  9a198e:	e8 ed e4 b0 ff       	call   0x4afe80
  9a1993:	85 c0                	test   eax,eax
  9a1995:	74 20                	je     0x9a19b7
  9a1997:	8b 10                	mov    edx,DWORD PTR [eax]
  9a1999:	6a 00                	push   0x0
  9a199b:	56                   	push   esi
  9a199c:	8b c8                	mov    ecx,eax
  9a199e:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  9a19a1:	6a 00                	push   0x0
  9a19a3:	ff d0                	call   eax
  9a19a5:	8b 16                	mov    edx,DWORD PTR [esi]
  9a19a7:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  9a19aa:	8b ce                	mov    ecx,esi
  9a19ac:	ff d0                	call   eax
  9a19ae:	8b 16                	mov    edx,DWORD PTR [esi]
  9a19b0:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  9a19b3:	8b ce                	mov    ecx,esi
  9a19b5:	ff d0                	call   eax
  9a19b7:	8b 87 88 00 00 00    	mov    eax,DWORD PTR [edi+0x88]
  9a19bd:	85 c0                	test   eax,eax
  9a19bf:	74 16                	je     0x9a19d7
  9a19c1:	8d 48 04             	lea    ecx,[eax+0x4]
  9a19c4:	c7 87 88 00 00 00 00 00 00 00 	mov    DWORD PTR [edi+0x88],0x0
  9a19ce:	8b 11                	mov    edx,DWORD PTR [ecx]
  9a19d0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9a19d3:	5f                   	pop    edi
  9a19d4:	5e                   	pop    esi
  9a19d5:	ff e0                	jmp    eax
  9a19d7:	5f                   	pop    edi
  9a19d8:	5e                   	pop    esi
  9a19d9:	c3                   	ret
