/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: matching context1 release before press clear, hover pick, invalidate; AL1 RET10.
   The matching capture/context-1 release precedes pressed-state clear and hover selection. Normal
   return sets AL=1; upper EAX is unspecified. RET 0x10 shows the full stack cleanup despite
   incomplete inferred parameters. Consumption does not prove gesture admission.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinSlider_OnMouseUp(void *this,undefined4 param_1)

{
  code *pcVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 unaff_retaddr;
  
  if (this == (void *)0x0) {
    iVar5 = 0;
  }
  else {
    iVar5 = (int)this + 4;
  }
  iVar3 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (iVar3 == iVar5) {
    (**(code **)(**(int **)((int)this + 0x30) + 0x68))(1,(int)this + 4,0);
  }
  pcVar1 = *(code **)(*(int *)this + 0xa8);
  *(undefined1 *)((int)this + 0x265) = 0xff;
  uVar2 = (*pcVar1)(unaff_retaddr,param_1);
  *(undefined1 *)((int)this + 0x264) = uVar2;
  uVar4 = (**(code **)(*(int *)((int)this + 4) + 0x90))();
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

