/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical ECX receiver plus three stack words, RET12. First byte selects stride1/2, second selects edge admission with receiver bytes+38/+39/+3A, third is output vector. Virtual+28 sample results stored Float32; four outside walks append24byte endpoint pairs, with opposite orientation on opposite sides. AL1 on return, not full EAXBoolean. Concrete vtable identities and caller C0208E owner undefined in current DB; native lifecycle/analytic roofs remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00BFCCD0_FUN_00bfccd0.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __thiscall FUN_00bfccd0(void *this,char param_1,void *param_2)

{
  float fVar1;
  float fVar2;
  int iVar3;
  float *pfVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  int iVar8;
  uint uVar9;
  float10 fVar10;
  float fVar11;
  float fVar12;
  uint local_44;
  int local_20 [2];
  float fStack_18;
  float fStack_14;
  float fStack_10;
  float fStack_c;
  float fStack_8;
  float fStack_4;
  
  fVar1 = *(float *)((int)this + 0x5c);
  fVar2 = *(float *)((int)this + 0x60);
  iVar8 = (param_1 != '\0') + 1;
  local_20[0] = 0;
  local_20[1] = *(int *)((int)this + 0x74) + -1;
  local_44 = 0;
  fVar6 = _DAT_00f9b5b4;
  do {
    iVar3 = local_20[local_44];
    fVar5 = (float)iVar3;
    if (iVar3 < 0) {
      fVar5 = fVar5 + FLOAT_00f99948;
    }
    uVar9 = 0;
    fVar5 = fVar5 * fVar6 + fVar1;
    if (*(int *)((int)this + 0x78) != 1) {
      do {
        fVar12 = (float)(int)uVar9;
        if ((int)uVar9 < 0) {
          fVar12 = fVar12 + FLOAT_00f99948;
        }
        fVar11 = (float)(uVar9 + iVar8);
        fVar12 = fVar12 * fVar6 + fVar2;
        fVar7 = (float)(int)fVar11;
        if ((int)fVar11 < 0) {
          fVar7 = fVar7 + FLOAT_00f99948;
        }
        fVar6 = fVar2 + fVar7 * fVar6;
        (**(code **)(*(int *)this + 0x28))(iVar3,uVar9);
        fVar10 = (float10)(**(code **)(*(int *)this + 0x28))(iVar3,uVar9 + 1);
        if (param_1 == '\0') {
          if (*(char *)((int)this + 0x38) != '\0') goto LAB_00bfce0e;
          if (*(char *)((int)this + 0x39) == '\0') {
LAB_00bfcde2:
            if (local_44 != 0) goto LAB_00bfce0e;
          }
          else if (local_44 != 1) {
            if (*(char *)((int)this + 0x39) != '\0') goto LAB_00bfce0e;
            goto LAB_00bfcde2;
          }
        }
        else {
          if (*(char *)((int)this + 0x38) == '\0') {
            if (*(char *)((int)this + 0x39) == '\0') {
LAB_00bfce07:
              if (local_44 != 1) goto LAB_00bfce0e;
              goto LAB_00bfce3a;
            }
            if (local_44 != 0) {
              if (*(char *)((int)this + 0x39) != '\0') goto LAB_00bfce0e;
              goto LAB_00bfce07;
            }
LAB_00bfce20:
            fStack_14 = fVar11;
            fStack_10 = fVar12;
            fVar11 = (float)fVar10;
            fVar12 = fVar6;
          }
          else {
LAB_00bfce0e:
            if (param_1 != '\0') goto LAB_00bfcebc;
            if (local_44 == 0) goto LAB_00bfce20;
LAB_00bfce3a:
            fStack_14 = (float)fVar10;
            fStack_10 = fVar6;
          }
          pfVar4 = *(float **)((int)param_2 + 4);
          fStack_18 = fVar5;
          fStack_8 = fVar11;
          fStack_c = fVar5;
          fStack_4 = fVar12;
          if (pfVar4 < *(float **)((int)param_2 + 8)) {
            *(float **)((int)param_2 + 4) = pfVar4 + 6;
            if (pfVar4 != (float *)0x0) {
              *pfVar4 = fVar5;
              pfVar4[1] = fStack_14;
              pfVar4[2] = fStack_10;
              pfVar4[5] = fVar12;
              pfVar4[4] = fVar11;
              pfVar4[3] = fVar5;
            }
          }
          else {
            FUN_00bfb130(param_2,pfVar4,&fStack_18);
          }
        }
LAB_00bfcebc:
        uVar9 = uVar9 + iVar8;
        fVar6 = _DAT_00f9b5b4;
      } while (uVar9 < *(int *)((int)this + 0x78) - 1U);
    }
    local_44 = local_44 + 1;
  } while (local_44 < 2);
  local_20[0] = 0;
  local_20[1] = *(int *)((int)this + 0x78) + -1;
  local_44 = 0;
  do {
    iVar3 = local_20[local_44];
    fVar12 = (float)iVar3;
    if (iVar3 < 0) {
      fVar12 = fVar12 + FLOAT_00f99948;
    }
    uVar9 = 0;
    fVar12 = fVar12 * fVar6 + fVar2;
    if (*(int *)((int)this + 0x74) != 1) {
      do {
        fVar2 = (float)(int)uVar9;
        if ((int)uVar9 < 0) {
          fVar2 = fVar2 + FLOAT_00f99948;
        }
        fVar11 = fVar2 * fVar6 + fVar1;
        fVar2 = (float)(int)(uVar9 + iVar8);
        if ((int)(uVar9 + iVar8) < 0) {
          fVar2 = fVar2 + FLOAT_00f99948;
        }
        fVar6 = fVar2 * fVar6 + fVar1;
        fVar10 = (float10)(**(code **)(*(int *)this + 0x28))(uVar9,iVar3);
        fVar2 = (float)fVar10;
        fVar10 = (float10)(**(code **)(*(int *)this + 0x28))(uVar9 + 1,iVar3);
        if (param_1 == '\0') {
          if (*(char *)((int)this + 0x38) == '\0') goto LAB_00bfcffa;
          if (*(char *)((int)this + 0x3a) == '\0') {
LAB_00bfcfce:
            if (local_44 != 0) goto LAB_00bfcffa;
          }
          else if (local_44 != 1) {
            if (*(char *)((int)this + 0x3a) != '\0') goto LAB_00bfcffa;
            goto LAB_00bfcfce;
          }
        }
        else {
          if (*(char *)((int)this + 0x38) == '\0') {
LAB_00bfcffa:
            if (param_1 != '\0') goto LAB_00bfd0a8;
            if (local_44 == 1) goto LAB_00bfd00c;
LAB_00bfd026:
            fStack_18 = fVar6;
            fStack_14 = (float)fVar10;
            fStack_8 = fVar5;
          }
          else {
            if (*(char *)((int)this + 0x3a) != '\0') {
              if (local_44 != 0) {
                if (*(char *)((int)this + 0x3a) != '\0') goto LAB_00bfcffa;
                goto LAB_00bfcff3;
              }
              goto LAB_00bfd026;
            }
LAB_00bfcff3:
            if (local_44 != 1) goto LAB_00bfcffa;
LAB_00bfd00c:
            fStack_18 = fVar11;
            fStack_14 = fVar5;
            fVar11 = fVar6;
            fStack_8 = (float)fVar10;
          }
          pfVar4 = *(float **)((int)param_2 + 4);
          fStack_10 = fVar12;
          fStack_c = fVar11;
          fStack_4 = fVar12;
          if (pfVar4 < *(float **)((int)param_2 + 8)) {
            *(float **)((int)param_2 + 4) = pfVar4 + 6;
            if (pfVar4 != (float *)0x0) {
              *pfVar4 = fStack_18;
              pfVar4[1] = fStack_14;
              pfVar4[2] = fVar12;
              pfVar4[5] = fVar12;
              pfVar4[4] = fStack_8;
              pfVar4[3] = fVar11;
            }
          }
          else {
            FUN_00bfb130(param_2,pfVar4,&fStack_18);
          }
        }
LAB_00bfd0a8:
        uVar9 = uVar9 + iVar8;
        fVar6 = _DAT_00f9b5b4;
      } while (uVar9 < *(int *)((int)this + 0x74) - 1U);
    }
    local_44 = local_44 + 1;
    if (1 < local_44) {
      return CONCAT31((int3)(local_44 >> 8),1);
    }
  } while( true );
}

