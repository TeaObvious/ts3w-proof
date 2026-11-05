/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Source8 to destination16 emits one UTF-16 unit per
   accepted1/2/3/4-byte UTF-8 sequence. Four-byte values retain their low16 bits rather than
   producing a surrogate pair. Stops at malformed/incomplete sequence; overlong guards and permitted
   surrogate code units follow the original instructions. Separate Windows-codepage paths are
   visible. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

uint __cdecl
CAW_OriginalStringEncodingConvert
          (void *input,uint inputLength,uint inputEncoding,void *output,uint *outputLength,
          uint outputEncoding)

{
  undefined1 *puVar1;
  byte bVar2;
  uint *puVar3;
  uint cchWideChar;
  UINT CodePage;
  uint uVar4;
  byte *pbVar5;
  ushort uVar6;
  ushort *puVar7;
  byte *pbVar8;
  int iVar9;
  uint uVar10;
  size_t _Size;
  BOOL local_4;
  
  uVar10 = inputEncoding;
  if (inputLength == 0) {
    *outputLength = 0;
    return 0;
  }
  cchWideChar = inputLength;
  if (inputLength == 0xffffffff) {
    if (0x20 < (int)inputEncoding) {
      if ((0x4af < (int)inputEncoding) && ((int)inputEncoding < 0x4b2)) goto LAB_1092733b;
LAB_10927362:
      cchWideChar = FUN_10930b90(input);
      goto LAB_10927346;
    }
    if (inputEncoding != 0x20) {
      if (inputEncoding != 0x10) goto LAB_10927362;
LAB_1092733b:
      cchWideChar = FUN_10930bb0(input);
      goto LAB_10927346;
    }
    cchWideChar = FUN_109270a0(input);
  }
  else {
LAB_10927346:
    if (uVar10 == 1) {
      uVar10 = 0x10;
    }
    else if ((uVar10 == 2) && (uVar10 = DAT_10cabd10, DAT_10cabd10 == 0)) {
      uVar10 = GetACP();
      DAT_10cabd10 = uVar10;
    }
  }
  if (outputEncoding == 1) {
    CodePage = 0x10;
  }
  else {
    CodePage = outputEncoding;
    if ((outputEncoding == 2) && (CodePage = DAT_10cabd10, DAT_10cabd10 == 0)) {
      CodePage = GetACP();
      DAT_10cabd10 = CodePage;
    }
  }
  puVar3 = outputLength;
  if (uVar10 != 0x10) {
    uVar4 = 0;
    if (cchWideChar != 0) {
      do {
        if (0x7f < *(byte *)(uVar4 + (int)input)) goto LAB_109273d2;
        uVar4 = uVar4 + 1;
      } while (uVar4 < cchWideChar);
    }
    uVar10 = 4;
  }
LAB_109273d2:
  if (uVar10 == CodePage) {
LAB_10927451:
    if (input != output) {
      if (*outputLength <= cchWideChar) {
        cchWideChar = *outputLength;
      }
      if (output != (void *)0x0) {
        _Size = cchWideChar;
        if (CodePage == 0x10) {
          _Size = cchWideChar * 2;
        }
        memcpy(output,input,_Size);
      }
    }
    *puVar3 = cchWideChar;
    return cchWideChar;
  }
  if (uVar10 == 4) {
    if (CodePage != 0x10) goto LAB_10927451;
  }
  else if (uVar10 == 0x10) {
    if (CodePage == 4) {
      if (*outputLength <= cchWideChar) {
        cchWideChar = *outputLength;
      }
      if (output != (void *)0x0) {
        puVar1 = (undefined1 *)((int)input + cchWideChar * 2);
        for (; input < puVar1; input = (void *)((int)input + 2)) {
          *(undefined1 *)output = *(undefined1 *)input;
          output = (void *)((int)output + 1);
        }
      }
      *outputLength = cchWideChar;
      return cchWideChar;
    }
  }
  else if (CodePage == 4) goto LAB_10927451;
  if (input == output) {
    return 0;
  }
  if (uVar10 == 8) {
    if (CodePage == 0x10) {
      uVar10 = *outputLength;
      pbVar8 = (byte *)(cchWideChar + (int)input);
      pbVar5 = input;
      puVar7 = output;
      if (input < pbVar8) {
        iVar9 = (int)pbVar8 - (int)input;
        while (puVar7 < (ushort *)((int)output + uVar10 * 2)) {
          bVar2 = *pbVar5;
          if (bVar2 < 0x80) {
            uVar6 = (ushort)bVar2;
            pbVar5 = pbVar5 + 1;
            iVar9 = iVar9 + -1;
          }
          else {
            if (bVar2 < 0xc2) break;
            if (bVar2 < 0xe0) {
              if ((iVar9 < 2) || (0x3f < (pbVar5[1] ^ 0x80))) break;
              uVar6 = (ushort)(bVar2 & 0x1f) << 6 | (ushort)(pbVar5[1] ^ 0x80);
              pbVar5 = pbVar5 + 2;
              iVar9 = iVar9 + -2;
            }
            else if (bVar2 < 0xf0) {
              if (((iVar9 < 3) || (0x3f < (pbVar5[1] ^ 0x80))) ||
                 ((0x3f < (pbVar5[2] ^ 0x80) || ((bVar2 < 0xe1 && (pbVar5[1] < 0xa0)))))) break;
              uVar6 = ((ushort)bVar2 << 6 | (ushort)(pbVar5[1] ^ 0x80)) << 6 |
                      (ushort)(pbVar5[2] ^ 0x80);
              pbVar5 = pbVar5 + 3;
              iVar9 = iVar9 + -3;
            }
            else {
              if (((((0xf7 < bVar2) || (iVar9 < 4)) || (0x3f < (pbVar5[1] ^ 0x80))) ||
                  ((0x3f < (pbVar5[2] ^ 0x80) || (0x3f < (pbVar5[3] ^ 0x80))))) ||
                 ((bVar2 < 0xf1 && (pbVar5[1] < 0x90)))) break;
              uVar6 = ((ushort)pbVar5[1] << 6 | (ushort)(pbVar5[2] ^ 0x80)) << 6 |
                      (ushort)(pbVar5[3] ^ 0x80);
              pbVar5 = pbVar5 + 4;
              iVar9 = iVar9 + -4;
            }
          }
          if (output != (void *)0x0) {
            *puVar7 = uVar6;
          }
          puVar7 = puVar7 + 1;
          if (pbVar8 <= pbVar5) break;
        }
      }
      *outputLength = (int)puVar7 - (int)output >> 1;
      return (int)pbVar5 - (int)input;
    }
LAB_1092777e:
    if (CodePage == 8) {
      uVar10 = FUN_109271e0(input,cchWideChar,uVar10,output,outputLength,8);
      return uVar10;
    }
    if (uVar10 == 8) {
      if (CodePage != 0x10) {
        uVar10 = FUN_109271e0(input,cchWideChar,8,output,outputLength,CodePage);
        return uVar10;
      }
LAB_109277cf:
      if (output == (void *)0x0) {
        return 0;
      }
      uVar10 = MultiByteToWideChar(uVar10,0,input,cchWideChar,output,*outputLength);
      if (uVar10 != 0) {
        *puVar3 = uVar10;
        return cchWideChar;
      }
      *puVar3 = 0;
      return 0;
    }
    if (uVar10 != 0x10) {
      if (CodePage == 0x10) goto LAB_109277cf;
      goto LAB_1092785d;
    }
  }
  else {
    if (uVar10 != 0x10) {
      if ((uVar10 == 4) && (CodePage == 0x10)) {
        if (*outputLength <= cchWideChar) {
          cchWideChar = *outputLength;
        }
        if ((output != (void *)0x0) && (uVar10 = 0, cchWideChar != 0)) {
          do {
            *(ushort *)output = (ushort)*(byte *)(uVar10 + (int)input);
            uVar10 = uVar10 + 1;
            output = (void *)((int)output + 2);
          } while (uVar10 < cchWideChar);
        }
        *outputLength = cchWideChar;
        return cchWideChar;
      }
      goto LAB_1092777e;
    }
    if (CodePage == 8) {
      uVar10 = *outputLength;
      puVar7 = input;
      puVar1 = output;
      while (puVar7 < (ushort *)((int)input + cchWideChar * 2)) {
        uVar6 = *puVar7;
        uVar4 = (uint)uVar6;
        if (uVar4 < 0x80) {
          iVar9 = 1;
        }
        else if (uVar4 < 0x800) {
          iVar9 = 2;
        }
        else if (uVar4 < 0x10000) {
          iVar9 = 3;
        }
        else if (uVar4 < 0x200000) {
          iVar9 = 4;
        }
        else if (uVar4 < 0x4000000) {
          iVar9 = 5;
        }
        else {
          if (0x7fffffff < uVar4) break;
          iVar9 = 6;
        }
        if ((undefined1 *)(uVar10 + (int)output) < puVar1 + iVar9) break;
        puVar7 = puVar7 + 1;
        if (output != (void *)0x0) {
          switch(iVar9) {
          case 6:
            puVar1[5] = (byte)uVar6 & 0x3f | 0x80;
            uVar4 = uVar6 >> 6 | 0x4000000;
          case 5:
            puVar1[4] = (byte)uVar4 & 0x3f | 0x80;
            uVar4 = (uVar4 | 0x8000000) >> 6;
          case 4:
            puVar1[3] = (byte)uVar4 & 0x3f | 0x80;
            uVar4 = (uVar4 | 0x400000) >> 6;
          case 3:
            puVar1[2] = (byte)uVar4 & 0x3f | 0x80;
            uVar4 = (uVar4 | 0x20000) >> 6;
          case 2:
            puVar1[1] = (byte)uVar4 & 0x3f | 0x80;
            uVar4 = (uVar4 | 0x3000) >> 6;
          case 1:
            *puVar1 = (char)uVar4;
          }
        }
        puVar1 = puVar1 + iVar9;
      }
      *outputLength = (int)puVar1 - (int)output;
      return (int)puVar7 - (int)input >> 1;
    }
  }
  if (CodePage != 0x10) {
    inputLength = CONCAT31(inputLength._1_3_,0x20);
    local_4 = 0;
    if (output == (void *)0x0) {
      return 0;
    }
    uVar10 = WideCharToMultiByte(CodePage,0,input,cchWideChar,output,*outputLength,
                                 (LPCSTR)&inputLength,&local_4);
    if (uVar10 != 0) {
      *puVar3 = uVar10;
      return cchWideChar;
    }
    *puVar3 = 0;
    return 0;
  }
LAB_1092785d:
  *outputLength = 0;
  return 0;
}

