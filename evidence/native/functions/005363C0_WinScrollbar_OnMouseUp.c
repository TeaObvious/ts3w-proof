/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: capture release before thumb target flush, press clear, hover pick and
   conditional clock stop; AL1 RET10.
   Release precedes any thumb target flush, then pressed-state clear and hover update. Clock stops
   only when increment flag 2 is off. Normal AL=1 with upper EAX unspecified; RET 0x10; metadata
   stack parameters are incomplete.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinScrollbar_OnMouseUp(void *this,undefined4 param_1)

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
  if (*(char *)((int)this + 0x285) == '\x03') {
    (**(code **)(*(int *)((int)this + 0x250) + 0x24))(*(undefined4 *)((int)this + 0x254));
  }
  pcVar1 = *(code **)(*(int *)this + 0xa8);
  *(undefined1 *)((int)this + 0x285) = 0xff;
  uVar2 = (*pcVar1)(unaff_retaddr,param_1);
  *(undefined1 *)((int)this + 0x284) = uVar2;
  if ((*(byte *)((int)this + 0x290) & 2) == 0) {
    ElapsedClock_StopAndAccumulate((uint *)((int)this + 0x298));
    if (*(char *)((int)this + 0x28c) == '\0') {
      (**(code **)(*(int *)((int)this + 4) + 0x74))(8,0);
    }
  }
  uVar4 = (**(code **)(*(int *)((int)this + 4) + 0x90))();
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

