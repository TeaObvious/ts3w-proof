/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 floor contribution physical contract): ECX is the FloorManager pointer; no
   incoming EDX value is read and there are no stack arguments/plain RET. The one observed direct
   caller AC6051 uses only EAX as a signed32 contribution; the stored inferred fastcall
   UInt64/two-parameter C prototype is preserved and is not evidence of an EDX input or meaningful
   high return. Manager+D8 is the pattern map; a null map contributes zero through the same
   conversion. Hash traversal supplies each entry's first16-byte key to C8EAE0, not rendered
   geometry. Missing product is skipped. Count at entry+44 is unsigned: FILD signed32 then add
   binary32 2^32 F99948 when sign is set. FMUL product binary32 price+58, FADD prior binary64 stack
   subtotal, FSTP binary64 after each entry. Final FLD binary64 subtotal, FMUL binary64 0.25 F99950,
   then F7F620 conversion; only EAX is consumed. Canonical C float temporaries and CONCAT44/extra
   EDX are decompiler artifacts: Listing/bytes govern. F7F620 has a separate F7F656 x87 fallback;
   feature flag, ambient x87 rounding and unsupported nonfinite/range cases do not establish
   universal CLR-double equivalence. Current evaluator preserves supported double calculation and
   explicit failures; it is not the full native map/catalog/lifetime or hash-order implementation.
   A9AC70 is not called here; current explicit invalid-key zero-price policy must not be attributed
   to that separate render predicate. */

ulonglong __fastcall FloorManager_ComputePatternContribution(int param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  void *this;
  uint uVar5;
  int iVar6;
  undefined4 extraout_EDX;
  uint *puVar7;
  int *piVar8;
  
  this = DAT_011ee034;
  iVar6 = *(int *)(param_1 + 0xd8);
  fVar4 = 0.0;
  if (iVar6 != 0) {
    piVar1 = *(int **)(iVar6 + 4);
    puVar7 = (uint *)*piVar1;
    piVar8 = piVar1;
    if (puVar7 == (uint *)0x0) {
      piVar8 = piVar1 + 1;
      iVar2 = piVar1[1];
      while (iVar2 == 0) {
        piVar8 = piVar8 + 1;
        iVar2 = *piVar8;
      }
      puVar7 = (uint *)*piVar8;
    }
    if (puVar7 != (uint *)piVar1[*(int *)(iVar6 + 8)]) {
      do {
        uVar5 = ProductCatalog_FindExactKeyInFourBanks(this,puVar7);
        if (uVar5 != 0) {
          fVar3 = (float)(int)puVar7[0x11];
          if ((int)puVar7[0x11] < 0) {
            fVar3 = fVar3 + FLOAT_00f99948;
          }
          fVar4 = fVar3 * *(float *)(uVar5 + 0x58) + fVar4;
        }
        for (puVar7 = (uint *)puVar7[0x12]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
          puVar7 = (uint *)(piVar8 + 1);
          piVar8 = piVar8 + 1;
        }
      } while (puVar7 != *(uint **)(*(int *)(iVar6 + 4) + *(int *)(iVar6 + 8) * 4));
    }
  }
  iVar6 = Compiler_TruncateX87ToLowInt32((float10)fVar4 * (float10)_DAT_00f99950);
  return CONCAT44(extraout_EDX,iVar6);
}

