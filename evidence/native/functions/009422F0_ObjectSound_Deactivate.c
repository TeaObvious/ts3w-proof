/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component, unused stack DWORD RET4 Boolean ALtrue.
   Clears active4C first. Captures row begin/end, skips row40000000. For each other nonzero maskedID
   with manager8AFE00 available, submits command0347536B with handle03475385 and034753A0=0 via
   virtual44/4C/68. Keeps vector rows/names; no erase here. This is deactivation command submission,
   not proof that backend playback has already stopped. */

bool __thiscall ObjectSound_Deactivate(void *this,uint unusedEventWord)

{
  uint *puVar1;
  uint arg1;
  int *piVar2;
  uint *puVar3;
  
  *(undefined1 *)((int)this + 0x4c) = 0;
  puVar3 = *(uint **)((int)this + 0x20);
  if (puVar3 == *(uint **)((int)this + 0x24)) {
    return true;
  }
  puVar1 = *(uint **)((int)this + 0x24);
  if (puVar3 == puVar1) {
    return true;
  }
  do {
    if ((*puVar3 & 0x40000000) == 0) {
      arg1 = *puVar3 & 0x3fffffff;
      piVar2 = (int *)FUN_008afe00();
      if ((piVar2 != (int *)0x0) && (arg1 != 0)) {
        (**(code **)(*piVar2 + 0x44))(0x347536b);
        (**(code **)(*piVar2 + 0x4c))(0x3475385,arg1);
        (**(code **)(*piVar2 + 0x4c))(0x34753a0,0);
        (**(code **)(*piVar2 + 0x68))();
      }
    }
    puVar3 = puVar3 + 5;
  } while (puVar3 != puVar1);
  return true;
}

