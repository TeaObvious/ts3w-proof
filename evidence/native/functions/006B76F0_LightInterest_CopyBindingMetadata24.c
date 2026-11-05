/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Compares and copies 24 bytes of adjacent binding metadata at receiver +1B8 through +1CC, with its
   existing change/update path. This body does not write the neighboring state at +1D0. */

void __thiscall LightInterest_CopyBindingMetadata24(void *this,byte *param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  int iVar3;
  byte *pbVar4;
  uint uVar5;
  int iVar6;
  
  pbVar1 = (byte *)((int)this + 0x1b8);
  uVar5 = 0x18;
  pbVar2 = param_1;
  pbVar4 = pbVar1;
  do {
    if (*(int *)pbVar4 != *(int *)pbVar2) goto LAB_006b7728;
    uVar5 = uVar5 - 4;
    pbVar2 = pbVar2 + 4;
    pbVar4 = pbVar4 + 4;
  } while (3 < uVar5);
  if (uVar5 == 0) {
LAB_006b778d:
    iVar3 = 0;
  }
  else {
LAB_006b7728:
    iVar6 = (uint)*pbVar4 - (uint)*pbVar2;
    if (iVar6 == 0) {
      if (uVar5 == 1) goto LAB_006b778d;
      iVar6 = (uint)pbVar4[1] - (uint)pbVar2[1];
      if (iVar6 == 0) {
        if (uVar5 == 2) goto LAB_006b778d;
        iVar6 = (uint)pbVar4[2] - (uint)pbVar2[2];
        if (iVar6 == 0) {
          if ((uVar5 == 3) || (iVar6 = (uint)pbVar4[3] - (uint)pbVar2[3], iVar6 == 0))
          goto LAB_006b778d;
        }
      }
    }
    iVar3 = 1;
    if (iVar6 < 1) {
      iVar3 = -1;
    }
  }
  if ((iVar3 != 0) &&
     ((((*(int *)(param_1 + 8) != *(int *)((int)this + 0x1c0) || (*(int *)param_1 != *(int *)pbVar1)
        ) || (*(int *)(param_1 + 4) != *(int *)((int)this + 0x1bc))) ||
      (((_DAT_01159d40 < ABS(*(float *)(param_1 + 0x14) - *(float *)((int)this + 0x1cc)) ||
        (_DAT_01159d40 < ABS(*(float *)(param_1 + 0xc) - *(float *)((int)this + 0x1c4)))) ||
       (_DAT_01159d40 < ABS(*(float *)(param_1 + 0x10) - *(float *)((int)this + 0x1c8)))))))) {
    *(int *)pbVar1 = *(int *)param_1;
    *(undefined4 *)((int)this + 0x1bc) = *(undefined4 *)(param_1 + 4);
    *(undefined4 *)((int)this + 0x1c0) = *(undefined4 *)(param_1 + 8);
    *(undefined4 *)((int)this + 0x1c4) = *(undefined4 *)(param_1 + 0xc);
    *(undefined4 *)((int)this + 0x1c8) = *(undefined4 *)(param_1 + 0x10);
    *(undefined4 *)((int)this + 0x1cc) = *(undefined4 *)(param_1 + 0x14);
    FUN_006b71e0((int)this);
  }
  return;
}

