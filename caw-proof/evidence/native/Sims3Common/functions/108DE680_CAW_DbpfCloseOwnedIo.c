/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: For an open DBPF, optionally commits writable state and
   flushes through virtual+24, then calls108DD840. Clears/relinquishes the embedded current stream
   and remaining database record/cache state. Read-only closure still reaches108DD840 without
   inventing a writable flush. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

char __thiscall CAW_DbpfCloseOwnedIo(void *this,char param_1)

{
  int *piVar1;
  undefined4 uVar2;
  char cVar3;
  
  if (*(uint *)((int)this + 0x14) == 0) {
    cVar3 = '\x01';
  }
  else {
    if ((*(uint *)((int)this + 0x14) & 2) == 0) {
      cVar3 = '\x01';
    }
    else {
      uVar2 = FUN_108ddb90(this);
      cVar3 = (char)uVar2;
      if ((param_1 != '\0') && (cVar3 != '\0')) {
        (**(code **)(*(int *)this + 0x24))();
        CAW_DbpfCloseCurrentStream((int)this);
        goto LAB_108de6c0;
      }
    }
    CAW_DbpfCloseCurrentStream((int)this);
  }
LAB_108de6c0:
  if ((*(int *)((int)this + 0x260) == (int)this + 0x34) &&
     (piVar1 = *(int **)((int)this + 0x260), piVar1 != (int *)0x0)) {
    *(undefined4 *)((int)this + 0x260) = 0;
    (**(code **)(*piVar1 + 8))();
  }
  if (*(int *)((int)this + 0x2d0) != 0) {
    (**(code **)(**(int **)((int)this + 0x2d0) + 0x10))();
  }
  FUN_108e0ef0((void *)((int)this + 0x344),0);
  FUN_108e0ef0((void *)((int)this + 0x368),0);
  return cVar3;
}

