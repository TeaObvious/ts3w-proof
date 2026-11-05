# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0078da80,0x0078db31); analyst name World_SetRoomMarkerSeed.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078da80 <.text+0x38ca80>:
  78da80:	83 ec 0c             	sub    esp,0xc
  78da83:	e8 e8 9a 1a 00       	call   0x937570
  78da88:	85 c0                	test   eax,eax
  78da8a:	0f 84 9d 00 00 00    	je     0x78db2d
  78da90:	53                   	push   ebx
  78da91:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  78da95:	55                   	push   ebp
  78da96:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  78da9a:	53                   	push   ebx
  78da9b:	55                   	push   ebp
  78da9c:	8b c8                	mov    ecx,eax
  78da9e:	e8 dd a4 1a 00       	call   0x937f80
  78daa3:	85 c0                	test   eax,eax
  78daa5:	0f 84 80 00 00 00    	je     0x78db2b
  78daab:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  78dab1:	56                   	push   esi
  78dab2:	51                   	push   ecx
  78dab3:	8b c8                	mov    ecx,eax
  78dab5:	e8 a6 67 1a 00       	call   0x934260
  78daba:	8b f0                	mov    esi,eax
  78dabc:	85 f6                	test   esi,esi
  78dabe:	74 6a                	je     0x78db2a
  78dac0:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  78dac6:	85 c9                	test   ecx,ecx
  78dac8:	74 60                	je     0x78db2a
  78daca:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  78dacd:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  78dad0:	57                   	push   edi
  78dad1:	6a 00                	push   0x0
  78dad3:	52                   	push   edx
  78dad4:	50                   	push   eax
  78dad5:	e8 36 4d 4d 00       	call   0xc62810
  78dada:	8b f8                	mov    edi,eax
  78dadc:	85 ff                	test   edi,edi
  78dade:	74 49                	je     0x78db29
  78dae0:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  78dae8:	8d 54 24 18          	lea    edx,[esp+0x18]
  78daec:	52                   	push   edx
  78daed:	8d 44 24 18          	lea    eax,[esp+0x18]
  78daf1:	50                   	push   eax
  78daf2:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  78daf6:	51                   	push   ecx
  78daf7:	8b ce                	mov    ecx,esi
  78daf9:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78daff:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  78db05:	c7 44 24 24 00 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  78db0d:	e8 ce b9 4f 00       	call   0xc894e0
  78db12:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  78db16:	8b 8f 98 02 00 00    	mov    ecx,DWORD PTR [edi+0x298]
  78db1c:	8d 54 24 10          	lea    edx,[esp+0x10]
  78db20:	52                   	push   edx
  78db21:	53                   	push   ebx
  78db22:	55                   	push   ebp
  78db23:	50                   	push   eax
  78db24:	e8 07 56 3c 00       	call   0xb53130
  78db29:	5f                   	pop    edi
  78db2a:	5e                   	pop    esi
  78db2b:	5d                   	pop    ebp
  78db2c:	5b                   	pop    ebx
  78db2d:	83 c4 0c             	add    esp,0xc
  78db30:	c3                   	ret
