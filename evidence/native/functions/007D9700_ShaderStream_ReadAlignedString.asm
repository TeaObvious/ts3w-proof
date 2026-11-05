# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x007d9700,0x007d976b); analyst name ShaderStream_ReadAlignedString.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d9700 <.text+0x3d8700>:
  7d9700:	51                   	push   ecx
  7d9701:	56                   	push   esi
  7d9702:	8b f1                	mov    esi,ecx
  7d9704:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7d9707:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7d970a:	50                   	push   eax
  7d970b:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7d970f:	51                   	push   ecx
  7d9710:	52                   	push   edx
  7d9711:	e8 6a 42 d0 ff       	call   0x4dd980
  7d9716:	83 c4 0c             	add    esp,0xc
  7d9719:	20 46 14             	and    BYTE PTR [esi+0x14],al
  7d971c:	74 48                	je     0x7d9766
  7d971e:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7d9722:	53                   	push   ebx
  7d9723:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  7d9727:	57                   	push   edi
  7d9728:	8b f8                	mov    edi,eax
  7d972a:	50                   	push   eax
  7d972b:	8b cb                	mov    ecx,ebx
  7d972d:	83 e7 03             	and    edi,0x3
  7d9730:	e8 cb 06 c3 ff       	call   0x409e00
  7d9735:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7d9739:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  7d973b:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d973e:	50                   	push   eax
  7d973f:	53                   	push   ebx
  7d9740:	51                   	push   ecx
  7d9741:	e8 6a 41 d0 ff       	call   0x4dd8b0
  7d9746:	20 46 14             	and    BYTE PTR [esi+0x14],al
  7d9749:	83 c4 0c             	add    esp,0xc
  7d974c:	85 ff                	test   edi,edi
  7d974e:	74 14                	je     0x7d9764
  7d9750:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7d9753:	8b 11                	mov    edx,DWORD PTR [ecx]
  7d9755:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  7d9758:	b8 04 00 00 00       	mov    eax,0x4
  7d975d:	6a 01                	push   0x1
  7d975f:	2b c7                	sub    eax,edi
  7d9761:	50                   	push   eax
  7d9762:	ff d2                	call   edx
  7d9764:	5f                   	pop    edi
  7d9765:	5b                   	pop    ebx
  7d9766:	5e                   	pop    esi
  7d9767:	59                   	pop    ecx
  7d9768:	c2 04 00             	ret    0x4
