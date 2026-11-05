/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Selects floor(world X/Z)>>8 in TerrainData sector array.
   Builds a downward ray: FILD unsigned range (signed load plus2^32 correction), FADD10, then FSTP
   binary32; only then SUBPS subtracts sector placement. The addition is rounded once after
   range+10, not float(range)+10. KD virtual ray hit returns float world distance; x87 returns
   range+10-distance or-100. The editor ordinary fine producer and quantizer are traced separately.
   Floor instruction sequence is FIST, float residual sign test then correction; original world
   bounds are a separate caller gate. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

float10 __thiscall CAW_TerrainCollisionHeight(int param_1,float param_2,float param_3)

{
  int iVar1;
  float fVar2;
  float fVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  float10 fVar7;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined1 local_40 [32];
  float fStack_20;
  
  fVar3 = DAT_10ac6f94;
  uVar5 = (int)((int)ROUND(param_3) + -1 +
               (uint)((uint)(param_3 - (float)(int)ROUND(param_3)) < 0x80000001)) >> 8;
  uVar6 = (int)((int)ROUND(param_2) + -1 +
               (uint)((uint)(param_2 - (float)(int)ROUND(param_2)) < 0x80000001)) >> 8;
  if (((uVar6 < *(uint *)(param_1 + 0xcc)) && (uVar5 < *(uint *)(param_1 + 0xd0))) &&
     (iVar1 = *(int *)(*(int *)(param_1 + 0xbc) + (*(uint *)(param_1 + 0xcc) * uVar5 + uVar6) * 4),
     iVar1 != 0)) {
    fVar2 = (float)*(int *)(param_1 + 0x34);
    if (*(int *)(param_1 + 0x34) < 0) {
      fVar2 = fVar2 + _DAT_10aae190;
    }
    local_60 = param_2 - *(float *)(iVar1 + 0x20);
    fStack_5c = (fVar2 + DAT_10b5631c) - *(float *)(iVar1 + 0x24);
    fStack_58 = param_3 - *(float *)(iVar1 + 0x28);
    fStack_54 = param_2 - *(float *)(iVar1 + 0x2c);
    local_50 = 0;
    uStack_4c = DAT_10aae184;
    uStack_48 = 0;
    uStack_44 = 0;
    cVar4 = (**(code **)(**(int **)(iVar1 + 0x38) + 0x10))(&local_60,local_40);
    if (cVar4 != '\0') {
      fVar7 = (float10)*(int *)(param_1 + 0x34);
      if (*(int *)(param_1 + 0x34) < 0) {
        fVar7 = fVar7 + (float10)_DAT_10aae190;
      }
      return (fVar7 + (float10)DAT_10b5631c) - (float10)fStack_20;
    }
  }
  return (float10)fVar3;
}

