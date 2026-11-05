/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Selects the same floor(X/Z)>>8 sector and constructs the
   same local downward ray as collision height. Initializes output to(0,1,0,0), overwrites only
   after a shape ray hit with the returned world normal. SIMD ray subtraction and shape output
   positions are original instruction contracts. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 * __thiscall
CAW_TerrainCollisionNormal(void *this,undefined4 *param_1,float param_2,float param_3)

{
  float fVar1;
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined1 local_40 [8];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  
  uVar2 = DAT_10acb0d4;
  uVar4 = (int)((int)ROUND(param_3) + -1 +
               (uint)((uint)(param_3 - (float)(int)ROUND(param_3)) < 0x80000001)) >> 8;
  uVar6 = (int)((int)ROUND(param_2) + -1 +
               (uint)((uint)(param_2 - (float)(int)ROUND(param_2)) < 0x80000001)) >> 8;
  if ((uVar6 < *(uint *)((int)this + 0xcc)) && (uVar4 < *(uint *)((int)this + 0xd0))) {
    iVar5 = *(int *)(*(int *)((int)this + 0xbc) + (*(uint *)((int)this + 0xcc) * uVar4 + uVar6) * 4)
    ;
  }
  else {
    iVar5 = 0;
  }
  *param_1 = 0;
  param_1[1] = uVar2;
  param_1[2] = 0;
  param_1[3] = 0;
  if (iVar5 != 0) {
    fVar1 = (float)*(int *)((int)this + 0x34);
    if (*(int *)((int)this + 0x34) < 0) {
      fVar1 = fVar1 + _DAT_10aae190;
    }
    local_60 = param_2 - *(float *)(iVar5 + 0x20);
    fStack_5c = (fVar1 + DAT_10b5631c) - *(float *)(iVar5 + 0x24);
    fStack_58 = param_3 - *(float *)(iVar5 + 0x28);
    fStack_54 = param_2 - *(float *)(iVar5 + 0x2c);
    local_50 = 0;
    uStack_4c = DAT_10aae184;
    uStack_48 = 0;
    uStack_44 = 0;
    cVar3 = (**(code **)(**(int **)(iVar5 + 0x38) + 0x10))(&local_60,local_40);
    if (cVar3 != '\0') {
      *param_1 = uStack_38;
      param_1[1] = uStack_34;
      param_1[2] = uStack_30;
      param_1[3] = uStack_2c;
      return param_1;
    }
  }
  return param_1;
}

