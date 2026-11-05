/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: stop clock, pick/store component, capture, delta/flag-dependent target/value or
   thumb offset; AL1 RET10.
   The initial clock operation stops and accumulates; it does not reset the accumulator. Picker
   precedes capture. Literal smooth/increment flags determine immediate value versus target
   transition; thumb stores a live-rectangle grab offset. Normal AL=1, upper EAX unspecified, RET
   0x10; metadata stack parameters are incomplete.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall WinScrollbar_OnMouseDown(void *this,undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  float unaff_ESI;
  float unaff_EDI;
  bool bVar5;
  float fVar6;
  
  ElapsedClock_StopAndAccumulate((uint *)((int)this + 0x298));
  if (*(char *)((int)this + 0x28c) == '\0') {
    (**(code **)(*(int *)((int)this + 4) + 0x74))(8,0);
  }
  uVar2 = (**(code **)(*(int *)this + 0xa8))(param_1,param_2);
  *(char *)((int)this + 0x285) = (char)uVar2;
  if ((char)uVar2 == -1) goto LAB_0053639d;
  piVar1 = (int *)((int)this + 4);
  piVar3 = (int *)(**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (piVar3 != piVar1) {
    (**(code **)(**(int **)((int)this + 0x30) + 100))(1,piVar1,0);
  }
  switch(*(undefined1 *)((int)this + 0x285)) {
  case 1:
    iVar4 = *(int *)((int)this + 0x254) - *(int *)((int)this + 0x274);
    goto LAB_0053627e;
  case 2:
    (**(code **)(*(int *)((int)this + 0x250) + 0x24))
              (*(int *)((int)this + 0x254) - *(int *)((int)this + 0x278));
    bVar5 = (*(byte *)((int)this + 0x290) & 2) == 0;
    break;
  case 3:
    ElapsedClock_StopAndAccumulate((uint *)((int)this + 0x298));
    if (*(char *)((int)this + 0x28c) == '\0') {
      (**(code **)(*piVar1 + 0x74))(8,0);
    }
    *(undefined4 *)((int)this + 0x25c) = *(undefined4 *)((int)this + 0x254);
    if (*(int *)((int)this + 0x280) == 1) {
      fVar6 = (unaff_EDI - *(float *)((int)this + 0x2e0)) + *(float *)((int)this + 0x2f0);
    }
    else {
      fVar6 = (unaff_ESI - *(float *)((int)this + 0x2e4)) + *(float *)((int)this + 0x2f4);
    }
    *(float *)((int)this + 0x288) = fVar6;
  default:
    goto switchD_0053626b_caseD_4;
  case 5:
    (**(code **)(*(int *)((int)this + 0x250) + 0x24))
              (*(int *)((int)this + 0x278) + *(int *)((int)this + 0x254));
    bVar5 = (*(byte *)((int)this + 0x290) & 2) == 0;
    break;
  case 6:
    iVar4 = *(int *)((int)this + 0x274) + *(int *)((int)this + 0x254);
LAB_0053627e:
    (**(code **)(*(int *)((int)this + 0x250) + 0x24))(iVar4);
    bVar5 = (*(byte *)((int)this + 0x290) & 3) == 0;
  }
  if (bVar5) {
    (**(code **)(*(int *)((int)this + 0x250) + 0x28))(*(undefined4 *)((int)this + 0x25c),1);
    uVar2 = (**(code **)(*piVar1 + 0x90))();
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
switchD_0053626b_caseD_4:
  uVar2 = (**(code **)(*piVar1 + 0x90))();
LAB_0053639d:
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

