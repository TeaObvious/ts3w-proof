/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes output to(0,1,0,0) before the ordered COMISS
   world gates; lower JC and upper JBE exclude NaN and infinities with the upward default.
   Covering-lot normals take precedence; only the remaining ordinary path calls101FAB10. The
   annotated contract is not a claim that positive-lot/ocean extensions are ported. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

undefined4 * __thiscall
CAW_WorldQueryTerrainNormal(void *this,undefined4 *param_1,float param_2,float param_3)

{
  void *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  uint uVar6;
  uint uVar7;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar4 = DAT_10acb0d4;
  uStack_14 = 0;
  uStack_18 = 0;
  local_20 = 0;
  uStack_1c = DAT_10acb0d4;
  *param_1 = 0;
  param_1[1] = uVar4;
  param_1[2] = 0;
  param_1[3] = 0;
  if ((((*(float *)((int)this + 0xb4) <= param_2) && (*(float *)((int)this + 0xb8) <= param_3)) &&
      (param_2 < *(float *)((int)this + 0xbc))) &&
     (param_3 < *(float *)((int)this + 0xc4) + *(float *)((int)this + 0xc0))) {
    piVar3 = (int *)FUN_1023cf80(this,param_2,param_3);
    if (piVar3 == (int *)0x0) {
      uVar7 = 0;
    }
    else {
      uVar7 = piVar3[1] - *piVar3 >> 2;
    }
    uVar6 = 0;
    if (uVar7 != 0) {
      do {
        this_00 = *(void **)(*piVar3 + uVar6 * 4);
        if ((this_00 != (void *)0x0) &&
           (uVar4 = FUN_1007ce30(this_00,param_2,param_3,param_1), (char)uVar4 != '\0')) {
          return param_1;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < uVar7);
    }
    puVar5 = CAW_TerrainCollisionNormal(*(void **)((int)this + 0x54),&local_20,param_2,param_3);
    uVar4 = puVar5[1];
    uVar1 = puVar5[2];
    uVar2 = puVar5[3];
    *param_1 = *puVar5;
    param_1[1] = uVar4;
    param_1[2] = uVar1;
    param_1[3] = uVar2;
  }
  return param_1;
}

