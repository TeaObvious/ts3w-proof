# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00995ff0,0x00996073); analyst name DownloadContent_ImportHouseholdContentsFromTravelBinImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00995ff0 <.text+0x594ff0>:
  995ff0:	83 ec 1c             	sub    esp,0x1c
  995ff3:	e8 98 33 dd ff       	call   0x769390
  995ff8:	85 c0                	test   eax,eax
  995ffa:	75 06                	jne    0x996002
  995ffc:	33 d2                	xor    edx,edx
  995ffe:	83 c4 1c             	add    esp,0x1c
  996001:	c3                   	ret
  996002:	8b 0d a4 a6 1e 01    	mov    ecx,DWORD PTR ds:0x11ea6a4
  996008:	56                   	push   esi
  996009:	8b 35 f8 c4 1e 01    	mov    esi,DWORD PTR ds:0x11ec4f8
  99600f:	8d 44 24 04          	lea    eax,[esp+0x4]
  996013:	50                   	push   eax
  996014:	c7 44 24 08 00 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  99601c:	e8 bf b9 00 00       	call   0x9a19e0
  996021:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  996025:	85 c0                	test   eax,eax
  996027:	75 07                	jne    0x996030
  996029:	33 d2                	xor    edx,edx
  99602b:	5e                   	pop    esi
  99602c:	83 c4 1c             	add    esp,0x1c
  99602f:	c3                   	ret
  996030:	57                   	push   edi
  996031:	6a 01                	push   0x1
  996033:	50                   	push   eax
  996034:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  996038:	e8 e3 18 e4 ff       	call   0x7d7920
  99603d:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  996041:	51                   	push   ecx
  996042:	8b ce                	mov    ecx,esi
  996044:	e8 07 01 14 00       	call   0xad6150
  996049:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  99604d:	8b f0                	mov    esi,eax
  99604f:	8b fa                	mov    edi,edx
  996051:	e8 3a 19 e4 ff       	call   0x7d7990
  996056:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  99605a:	85 c0                	test   eax,eax
  99605c:	74 0b                	je     0x996069
  99605e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  996061:	8d 48 04             	lea    ecx,[eax+0x4]
  996064:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  996067:	ff d0                	call   eax
  996069:	8b d7                	mov    edx,edi
  99606b:	5f                   	pop    edi
  99606c:	8b c6                	mov    eax,esi
  99606e:	5e                   	pop    esi
  99606f:	83 c4 1c             	add    esp,0x1c
  996072:	c3                   	ret
