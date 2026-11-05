# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009397a0,0x00939810); analyst name ParameterRecords_UnguardedInsertionByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009397a0 <.text+0x5387a0>:
  9397a0:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  9397a4:	83 ec 10             	sub    esp,0x10
  9397a7:	3b 54 24 18          	cmp    edx,DWORD PTR [esp+0x18]
  9397ab:	74 5f                	je     0x93980c
  9397ad:	53                   	push   ebx
  9397ae:	55                   	push   ebp
  9397af:	56                   	push   esi
  9397b0:	57                   	push   edi
  9397b1:	8b 4a 0c             	mov    ecx,DWORD PTR [edx+0xc]
  9397b4:	8b 32                	mov    esi,DWORD PTR [edx]
  9397b6:	3b 72 f0             	cmp    esi,DWORD PTR [edx-0x10]
  9397b9:	8b 7a 04             	mov    edi,DWORD PTR [edx+0x4]
  9397bc:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  9397bf:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  9397c3:	8d 4a f0             	lea    ecx,[edx-0x10]
  9397c6:	8b c2                	mov    eax,edx
  9397c8:	73 26                	jae    0x9397f0
  9397ca:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  9397d0:	8b 29                	mov    ebp,DWORD PTR [ecx]
  9397d2:	89 28                	mov    DWORD PTR [eax],ebp
  9397d4:	8b 69 04             	mov    ebp,DWORD PTR [ecx+0x4]
  9397d7:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  9397da:	8b 69 08             	mov    ebp,DWORD PTR [ecx+0x8]
  9397dd:	89 68 08             	mov    DWORD PTR [eax+0x8],ebp
  9397e0:	8b 69 0c             	mov    ebp,DWORD PTR [ecx+0xc]
  9397e3:	89 68 0c             	mov    DWORD PTR [eax+0xc],ebp
  9397e6:	83 e9 10             	sub    ecx,0x10
  9397e9:	83 e8 10             	sub    eax,0x10
  9397ec:	3b 31                	cmp    esi,DWORD PTR [ecx]
  9397ee:	72 e0                	jb     0x9397d0
  9397f0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  9397f4:	89 30                	mov    DWORD PTR [eax],esi
  9397f6:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  9397f9:	83 c2 10             	add    edx,0x10
  9397fc:	3b 54 24 28          	cmp    edx,DWORD PTR [esp+0x28]
  939800:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  939803:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  939806:	75 a9                	jne    0x9397b1
  939808:	5f                   	pop    edi
  939809:	5e                   	pop    esi
  93980a:	5d                   	pop    ebp
  93980b:	5b                   	pop    ebx
  93980c:	83 c4 10             	add    esp,0x10
  93980f:	c3                   	ret
