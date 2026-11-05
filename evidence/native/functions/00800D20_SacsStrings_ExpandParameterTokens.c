/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67: ECX driver, two stack words RET8, AL
   cumulative status. Iterates UTF16 source, substitutes repeated brace tokens. Trailing '?' permits
   empty string but not missing value. Nested/open/unterminated token or missing text marks failure
   via007FDA50; output can already contain prefix and later text, unlike current C# exceptions.
   Parameter text comes from007FD4C0(resolve=1), allowing hash-to-name lookup. Stray close brace is
   literal; empty-brace handling differs from current dictionary lookup. No proof of C#
   StringBuilder or exception policy is implied. */

undefined1 __thiscall SacsStrings_ExpandParameterTokens(void *this,int *param_1,undefined4 *param_2)

{
  void *pvVar1;
  size_t _Size;
  wint_t *pwVar2;
  short sVar3;
  uint *puVar4;
  undefined1 *_Dst;
  ulong uVar5;
  short *psVar6;
  ulong *puVar7;
  short *psVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  undefined2 *puVar12;
  undefined1 local_25;
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  void *local_14;
  wint_t *local_10;
  short *local_c;
  undefined2 *local_8;
  char *local_4;
  
  local_10 = (wint_t *)&DAT_011c8e54;
  local_c = (short *)&DAT_011c8e54;
  puVar12 = (undefined2 *)*param_2;
  local_25 = 1;
  local_4 = "SACS/ExpandParameterizedStringPropertyName";
  local_8 = &DAT_011c8e56;
  if (puVar12 != (undefined2 *)param_2[1]) {
    *puVar12 = 0;
    puVar12 = (undefined2 *)*param_2;
    param_2[1] = puVar12;
  }
  local_20 = param_1[1] - *param_1 >> 1;
  local_1c = local_20 * 2;
  local_24 = param_2[1] - (int)puVar12 >> 1;
  puVar4 = &local_24;
  if (local_24 <= local_1c) {
    puVar4 = &local_1c;
  }
  local_14 = this;
  if ((uint)(param_2[2] - (int)puVar12 >> 1) < *puVar4 + 1) {
    FUN_0040aa90(param_2,*puVar4 + 1);
  }
  uVar10 = 0;
  puVar12 = &DAT_011c8e56;
  if (local_20 != 0) {
    do {
      sVar3 = *(short *)(*param_1 + uVar10 * 2);
      while ((sVar3 != 0x7b && (sVar3 != 0))) {
        FUN_00412c20(param_2,sVar3);
        iVar9 = uVar10 * 2;
        uVar10 = uVar10 + 1;
        sVar3 = *(short *)(*param_1 + 2 + iVar9);
      }
      iVar9 = *param_1;
      if (*(short *)(iVar9 + uVar10 * 2) == 0x7b) {
        uVar11 = uVar10 + 1;
        sVar3 = *(short *)(iVar9 + uVar11 * 2);
        pvVar1 = (void *)(iVar9 + uVar11 * 2);
        uVar10 = uVar11;
        if (sVar3 != 0x7d) {
          do {
            if ((sVar3 == 0x7b) || (sVar3 == 0)) {
              local_25 = 0;
              uVar10 = uVar10 - 1;
              break;
            }
            sVar3 = *(short *)(iVar9 + 2 + uVar10 * 2);
            uVar10 = uVar10 + 1;
          } while (sVar3 != 0x7d);
          local_24 = uVar10;
          if (uVar11 < uVar10) {
            local_1c = (param_1[1] - iVar9 >> 1) - uVar11;
            local_18 = uVar10 - uVar11;
            puVar4 = &local_1c;
            if (uVar10 - uVar11 <= local_1c) {
              puVar4 = &local_18;
            }
            iVar9 = (int)((iVar9 + (*puVar4 + uVar11) * 2) - (int)pvVar1) >> 1;
            uVar10 = iVar9 + 1;
            if (uVar10 < 2) {
              _Dst = &DAT_011c8e54;
              puVar12 = &DAT_011c8e56;
            }
            else {
              uVar10 = uVar10 * 2;
              _Dst = (undefined1 *)FUN_004e4500(uVar10,param_1[3],0);
              puVar12 = (undefined2 *)(_Dst + uVar10);
            }
            _Size = iVar9 * 2;
            memmove(_Dst,pvVar1,_Size);
            *(undefined2 *)(_Dst + _Size) = 0;
            FUN_00408d60(&local_10,_Dst,(undefined2 *)(_Dst + _Size));
            if ((2 < (int)((int)puVar12 - (int)_Dst & 0xfffffffeU)) && (_Dst != (undefined1 *)0x0))
            {
              Memory_FreeIfNonNull(_Dst);
            }
            pwVar2 = local_10;
            psVar6 = local_c + -1;
            sVar3 = *psVar6;
            if (sVar3 == 0x3f) {
              *psVar6 = 0;
              local_c = psVar6;
            }
            uVar5 = FUN_00582970(local_10);
            pvVar1 = local_14;
            puVar7 = *(ulong **)((int)local_14 + 0x20);
            if (puVar7 != *(ulong **)((int)local_14 + 0x24)) {
LAB_00800f03:
              if (*puVar7 != uVar5) goto code_r0x00800f07;
              if (((puVar7 + 1 != (ulong *)0x0) &&
                  (psVar6 = (short *)SacsParameter_ResolveText(puVar7 + 1,'\x01'),
                  psVar6 != (short *)0x0)) && ((sVar3 == 0x3f || (*psVar6 != 0)))) {
                sVar3 = *psVar6;
                psVar8 = psVar6;
                while (sVar3 != 0) {
                  psVar8 = psVar8 + 1;
                  sVar3 = *psVar8;
                }
                FUN_00408b90(param_2,psVar6,psVar6 + ((int)psVar8 - (int)psVar6 >> 1));
                uVar10 = local_24;
                goto LAB_00800f2a;
              }
            }
LAB_00800f0e:
            FUN_007fda50(*(void **)((int)pvVar1 + 0xc),pwVar2);
            local_25 = 0;
            uVar10 = local_24;
          }
        }
      }
LAB_00800f2a:
      uVar10 = uVar10 + 1;
      puVar12 = local_8;
    } while (uVar10 < local_20);
  }
  if ((2 < (int)((int)puVar12 - (int)local_10 & 0xfffffffeU)) && (local_10 != (wint_t *)0x0)) {
    Memory_FreeIfNonNull(local_10);
  }
  return local_25;
code_r0x00800f07:
  puVar7 = puVar7 + 4;
  if (puVar7 == *(ulong **)((int)local_14 + 0x24)) goto LAB_00800f0e;
  goto LAB_00800f03;
}

