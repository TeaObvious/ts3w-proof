/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  ushort *puVar6;
  ulong uVar7;
  wchar_t *pwVar8;
  int *piVar9;
  uint uVar10;
  ulonglong uVar11;
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
      pwVar8 = (wchar_t *)nameUnits;
      puVar4 = nameUnits;
LAB_004aeec5:
      if (pwVar8 == pwVar3) {
        *outKey = 0xffffffff;
        outKey[1] = 0xffffffff;
      }
      else {
        puVar6 = ResourceKey_FindNumericSuffix((ushort *)pwVar8,(ushort *)pwVar3,1,1);
        if (puVar6 == (ushort *)0x0) {
          uVar11 = NameHash64_Fnv1FoldedUtf16Units((ushort *)pwVar8,(int)pwVar3 - (int)pwVar8 >> 1);
        }
        else {
          uVar11 = FUN_004fef40(puVar6,(int *)0x0,0x10);
        }
        *(ulonglong *)outKey = uVar11;
      }
      if (nameUnits != puVar4) {
        pwVar3 = (wchar_t *)ResourceKey_FindNumericSuffix(nameUnits,puVar4,1,0);
        if (pwVar3 == (wchar_t *)0x0) {
          uVar7 = FUN_004aed50(nameUnits,(int)puVar4 - (int)nameUnits >> 1);
        }
        else {
          uVar7 = wcstoul(pwVar3,(wchar_t **)0x0,0x10);
        }
        outKey[3] = uVar7;
      }
      if (((outKey[2] == 0) && (outKey[2] = 0xffffffff, local_4 != (wchar_t *)0x0)) &&
         (*local_4 != L'\0')) {
        pwVar3 = local_4;
        do {
          wVar2 = *pwVar3;
          pwVar3 = pwVar3 + 1;
        } while (wVar2 != L'\0');
        pwVar8 = (wchar_t *)
                 ResourceKey_FindNumericSuffix
                           ((ushort *)local_4,
                            (ushort *)(local_4 + ((int)pwVar3 - (int)(local_4 + 1) >> 1)),0,0);
        if (pwVar8 == (wchar_t *)0x0) {
          if ((((contextWord == 0) ||
               (piVar9 = (int *)FUN_004aee20(contextWord), piVar9 == (int *)0x0)) ||
              (uVar10 = (**(code **)(*piVar9 + 0x60))(local_4), uVar10 == 0xffffffff)) &&
             (((resolver == (void *)0x0 &&
               (resolver = (void *)FUN_004afe80(), resolver == (int *)0x0)) ||
              (uVar10 = (**(code **)(*(int *)resolver + 0x90))(local_4), uVar10 == 0xffffffff)))) {
            uVar10 = FUN_007cfec0((wint_t *)local_4,
                                  (int)(local_4 + ((int)pwVar3 - (int)(local_4 + 1) >> 1)) -
                                  (int)local_4 >> 1);
            outKey[2] = uVar10;
          }
          else {
            outKey[2] = uVar10;
          }
        }
        else {
          uVar7 = wcstoul(pwVar8,(wchar_t **)0x0,0x10);
          outKey[2] = uVar7;
        }
      }
      if (resolver != (int *)0x0) {
        (**(code **)(*(int *)resolver + 0x88))(outKey,nameUnits);
      }
      return true;
    }
    if (*puVar4 == 0x21) {
      pwVar8 = (wchar_t *)(puVar4 + 1);
      outKey[3] = 0xffffffff;
      goto LAB_004aeec5;
    }
    puVar4 = puVar4 + 1;
    iVar5 = iVar5 + -1;
  } while( true );
}

