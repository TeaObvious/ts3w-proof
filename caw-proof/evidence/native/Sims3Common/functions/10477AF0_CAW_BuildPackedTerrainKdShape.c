/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Stores axis scales and their binary32 inverses, copies
   three signed-short XYZ coordinates from each caller vertex using the supplied byte stride, then
   calls 0x10477760 to construct the KD nodes and ordered faces. The ordinary terrain builder
   supplies four-short packed vertices with stride eight; fourth-short secondary displacement is
   separate from these collision vertex triples. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __thiscall
CAW_BuildPackedTerrainKdShape
          (void *this,void *param_1,uint param_2,int param_3,int param_4,uint param_5,
          undefined4 *param_6)

{
  undefined4 *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  uint local_24;
  
  uVar3 = param_6[1];
  uVar1 = param_6[2];
  uVar2 = param_6[3];
  *(undefined4 *)((int)this + 0x60) = *param_6;
  *(undefined4 *)((int)this + 100) = uVar3;
  *(undefined4 *)((int)this + 0x68) = uVar1;
  *(undefined4 *)((int)this + 0x6c) = uVar2;
  fVar4 = DAT_10acb0d4 / *(float *)((int)this + 0x68);
  fVar5 = DAT_10acb0d4 / *(float *)((int)this + 100);
  this_00 = (undefined4 *)((int)this + 0x90);
  *(float *)((int)this + 0x70) = DAT_10acb0d4 / *(float *)((int)this + 0x60);
  *(float *)((int)this + 0x74) = fVar5;
  *(float *)((int)this + 0x78) = fVar4;
  *(float *)((int)this + 0x7c) = fVar4;
  *(undefined4 *)((int)this + 0x94) = *this_00;
  FUN_100aec60(this_00,param_2);
  if (param_2 != 0) {
    local_24 = param_2;
    do {
      FUN_1020e9c0(this_00,*(void **)((int)this + 0x94),param_1,(void *)((int)param_1 + 6));
      param_1 = (void *)((int)param_1 + param_3);
      local_24 = local_24 - 1;
    } while (local_24 != 0);
  }
  uVar3 = CAW_TerrainBuildPackedKdBounds(this,param_4,param_5);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

