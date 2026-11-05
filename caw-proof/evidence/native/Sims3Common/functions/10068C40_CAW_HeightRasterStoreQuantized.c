/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Rejects negative candidates; divides by owned height
   quantum, saturates raw values above binary32 65535, truncates with CVTTSS2SI and immediately
   stores uint16. In-bounds accepted writes update dirty bounds and mark raster +34 dirty even if
   the quantized sample is unchanged; no prior-height comparison occurs. Out-of-bounds stores return
   AL false. Subsequent brush arithmetic observes the stored quantized value. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

uint __thiscall CAW_HeightRasterStoreQuantized(void *this,int param_1,int param_2,float param_3)

{
  uint in_EAX;
  undefined4 uVar1;
  undefined2 uVar2;
  float fVar3;
  
  if (param_3 < 0.0) {
    return in_EAX & 0xffffff00;
  }
  fVar3 = param_3 / *(float *)((int)this + 8);
  if (fVar3 <= DAT_10ab37b8) {
    in_EAX = (uint)fVar3;
    uVar2 = (undefined2)in_EAX;
  }
  else {
    uVar2 = 0xffff;
  }
  if ((((-1 < param_1) && (in_EAX = *(uint *)((int)this + 0x14), param_1 < (int)in_EAX)) &&
      (-1 < param_2)) && (param_2 < *(int *)((int)this + 0x18))) {
    *(undefined2 *)(*(int *)((int)this + 0x38) + (in_EAX * param_2 + param_1) * 2) = uVar2;
    uVar1 = CAW_DirtyRectIncludeRasterCell((int *)((int)this + 0x54),param_1,param_2);
    *(undefined1 *)((int)this + 0x34) = 1;
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

