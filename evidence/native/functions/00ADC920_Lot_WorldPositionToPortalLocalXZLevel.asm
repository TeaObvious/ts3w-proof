# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00adc920,0x00adc97a); analyst name Lot_WorldPositionToPortalLocalXZLevel.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00adc920 <.text+0x6db920>:
  adc920:	55                   	push   ebp
  adc921:	8b ec                	mov    ebp,esp
  adc923:	83 e4 f0             	and    esp,0xfffffff0
  adc926:	83 ec 1c             	sub    esp,0x1c
  adc929:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  adc92c:	56                   	push   esi
  adc92d:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  adc930:	8d 44 24 10          	lea    eax,[esp+0x10]
  adc934:	50                   	push   eax
  adc935:	51                   	push   ecx
  adc936:	8b ce                	mov    ecx,esi
  adc938:	e8 63 a8 fd ff       	call   0xab71a0
  adc93d:	6a 00                	push   0x0
  adc93f:	8d 54 24 14          	lea    edx,[esp+0x14]
  adc943:	52                   	push   edx
  adc944:	8b ce                	mov    ecx,esi
  adc946:	e8 65 98 fd ff       	call   0xab61b0
  adc94b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  adc950:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  adc953:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc958:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  adc95e:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  adc963:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  adc969:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  adc96c:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  adc970:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  adc975:	5e                   	pop    esi
  adc976:	8b e5                	mov    esp,ebp
  adc978:	5d                   	pop    ebp
  adc979:	c3                   	ret
