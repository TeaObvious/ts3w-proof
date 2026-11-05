/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: captured thumb uses live ValueAt; otherwise hover pick update; AL1 RET0c.
   Capture and pressed component govern the value/hover paths; live geometry is used rather than a
   press snapshot. Normal return sets AL=1; upper EAX is unspecified. RET 0x0c; preserved metadata
   may omit stack parameters. Outer event ordering remains unproved.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinSlider_OnMouseMove(void *this,undefined4 param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 unaff_retaddr;
  
  if (this == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)this + 4;
  }
  iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (iVar1 == iVar2) {
    iVar2 = *(byte *)((int)this + 0x265) - 1;
    if (iVar2 == 0) {
      iVar2 = *(int *)((int)this + 0x250);
      uVar3 = (**(code **)(*(int *)this + 0xac))(unaff_retaddr,param_1,1);
      uVar3 = (**(code **)(iVar2 + 0x1c))(uVar3);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  else {
    iVar2 = (**(code **)(*(int *)this + 0xa8))(unaff_retaddr,param_1);
    if (*(char *)((int)this + 0x264) != (char)iVar2) {
      *(char *)((int)this + 0x264) = (char)iVar2;
      iVar2 = (**(code **)(*(int *)((int)this + 4) + 0x90))();
    }
  }
  return CONCAT31((int3)((uint)iVar2 >> 8),1);
}

