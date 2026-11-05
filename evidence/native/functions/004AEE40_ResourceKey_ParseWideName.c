/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 tree texture instruction contract. cdecl SIX words, AL Boolean, output16-byte
   key=[instanceLo,instanceHi,type,group]. Null/empty input false before output writes. Initializes
   type, selects FIRST dot boundary viawcschr. Optional ! splits group prefix and instance. Empty
   instance range storesFFFFFFFFFFFFFFFF.4AED70 may recognize numeric suffix (8/16 hex) then4FEF40
   base16; otherwise7CFF80 foldedUTF16 FNV1. Explicit group prefix similarly numeric8 or32-bit hash.
   type0 extension registry/fallback branch preserved, but tree calls supplyB2D882 and null
   resolver/context so bypass it. Optional resolver+88 notification only when supplied. Original CRT
   digit/case locale not invariantUnicode promise. Numeric syntax is not always hashing the entire
   filename. */

bool __cdecl
ResourceKey_ParseWideName
          (uint *outKey,ushort *nameUnits,uint typeWord,uint groupWord,void *resolver,
          uint contextWord)

{
  ushort uVar1;
  wchar_t wVar2;
  wchar_t *pwVar3;
  ushort *puVar4;
  int iVar5;
  ushort *text;
  ulong uVar6;
  wchar_t *pwVar7;
  int *piVar8;
  uint uVar9;
  ulonglong uVar10;
  wchar_t *local_4;
  
  if ((nameUnits == (ushort *)0x0) || (*nameUnits == 0)) {
    return false;
  }
  outKey[2] = typeWord;
  local_4 = (wchar_t *)0x0;
  pwVar3 = wcschr((wchar_t *)nameUnits,L'.');
  if (pwVar3 == (wchar_t *)0x0) {
    puVar4 = nameUnits;
    do {
      uVar1 = *puVar4;
      puVar4 = puVar4 + 1;
    } while (uVar1 != 0);
    pwVar3 = (wchar_t *)(nameUnits + ((int)puVar4 - (int)(nameUnits + 1) >> 1));
  }
  else {
    local_4 = pwVar3 + 1;
  }
  iVar5 = (int)pwVar3 - (int)nameUnits >> 1;
  puVar4 = nameUnits;
  do {
    if (iVar5 == 0) {
      outKey[3] = groupWord;
      pwVar7 = (wchar_t *)nameUnits;
      puVar4 = nameUnits;
LAB_004aeec5:
      if (pwVar7 == pwVar3) {
        *outKey = 0xffffffff;
        outKey[1] = 0xffffffff;
      }
      else {
        text = ResourceKey_FindNumericSuffix((ushort *)pwVar7,(ushort *)pwVar3,1,1);
        if (text == (ushort *)0x0) {
          uVar10 = NameHash64_Fnv1FoldedUtf16Units((ushort *)pwVar7,(int)pwVar3 - (int)pwVar7 >> 1);
        }
        else {
          uVar10 = NumericText_ParseUnsigned64(text,(ushort **)0x0,0x10);
        }
        *(ulonglong *)outKey = uVar10;
      }
      if (nameUnits != puVar4) {
        pwVar3 = (wchar_t *)ResourceKey_FindNumericSuffix(nameUnits,puVar4,1,0);
        if (pwVar3 == (wchar_t *)0x0) {
          uVar6 = FUN_004aed50(nameUnits,(int)puVar4 - (int)nameUnits >> 1);
        }
        else {
          uVar6 = wcstoul(pwVar3,(wchar_t **)0x0,0x10);
        }
        outKey[3] = uVar6;
      }
      if (((outKey[2] == 0) && (outKey[2] = 0xffffffff, local_4 != (wchar_t *)0x0)) &&
         (*local_4 != L'\0')) {
        pwVar3 = local_4;
        do {
          wVar2 = *pwVar3;
          pwVar3 = pwVar3 + 1;
        } while (wVar2 != L'\0');
        pwVar7 = (wchar_t *)
                 ResourceKey_FindNumericSuffix
                           ((ushort *)local_4,
                            (ushort *)(local_4 + ((int)pwVar3 - (int)(local_4 + 1) >> 1)),0,0);
        if (pwVar7 == (wchar_t *)0x0) {
          if ((((contextWord == 0) ||
               (piVar8 = (int *)FUN_004aee20(contextWord), piVar8 == (int *)0x0)) ||
              (uVar9 = (**(code **)(*piVar8 + 0x60))(local_4), uVar9 == 0xffffffff)) &&
             (((resolver == (void *)0x0 &&
               (resolver = (void *)FUN_004afe80(), resolver == (int *)0x0)) ||
              (uVar9 = (**(code **)(*(int *)resolver + 0x90))(local_4), uVar9 == 0xffffffff)))) {
            uVar9 = Hash_Fnv1CrtLowerUtf16Units
                              ((wint_t *)local_4,
                               (int)(local_4 + ((int)pwVar3 - (int)(local_4 + 1) >> 1)) -
                               (int)local_4 >> 1);
            outKey[2] = uVar9;
          }
          else {
            outKey[2] = uVar9;
          }
        }
        else {
          uVar6 = wcstoul(pwVar7,(wchar_t **)0x0,0x10);
          outKey[2] = uVar6;
        }
      }
      if (resolver != (int *)0x0) {
        (**(code **)(*(int *)resolver + 0x88))(outKey,nameUnits);
      }
      return true;
    }
    if (*puVar4 == 0x21) {
      pwVar7 = (wchar_t *)(puVar4 + 1);
      outKey[3] = 0xffffffff;
      goto LAB_004aeec5;
    }
    puVar4 = puVar4 + 1;
    iVar5 = iVar5 + -1;
  } while( true );
}

