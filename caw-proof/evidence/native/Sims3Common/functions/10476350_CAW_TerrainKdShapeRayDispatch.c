/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: The sector KDShape virtual ray calls its owned KD data
   at+60 through10475FF0. On hit copies distance into collision result+20 and normal into+10..1C;
   stores shape identity+24. It performs no additional triangle selection or normal averaging.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 __thiscall CAW_TerrainKdShapeRayDispatch(void *this,float *param_1,int param_2)

{
  uint uVar1;
  float local_30 [4];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar1 = CAW_TerrainKdRayWorld(*(void **)((int)this + 0x60),param_1,local_30);
  if ((char)uVar1 != '\0') {
    *(float *)(param_2 + 0x20) = local_30[0];
    *(undefined4 *)(param_2 + 0x10) = local_20;
    *(undefined4 *)(param_2 + 0x14) = uStack_1c;
    *(undefined4 *)(param_2 + 0x18) = uStack_18;
    *(undefined4 *)(param_2 + 0x1c) = uStack_14;
    *(void **)(param_2 + 0x24) = this;
    return CONCAT31((int3)((uint)param_2 >> 8),1);
  }
  return uVar1 & 0xffffff00;
}

