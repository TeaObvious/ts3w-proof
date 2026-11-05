/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_Clone. Export ordinal(s): 472. Entry VA:
   0x105362f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FC2. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 Objects_Clone(void)

{
  int iVar1;
  undefined4 *puVar2;
  void *this;
  int *piVar3;
  
                    /* 0x5362f0  472  Objects_Clone */
  iVar1 = FUN_1072a1a0();
  puVar2 = (undefined4 *)FUN_1072abb0(iVar1);
  this = (void *)FUN_1072a1a0();
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_10967620((int)puVar2);
  }
  if (((this != (void *)0x0) && (puVar2 != (undefined4 *)0x0)) && (piVar3 != (int *)0x0)) {
    puVar2 = FUN_1072b8f0(this,puVar2,0,0,0xffffffff);
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)(*piVar3 + 0x30))(puVar2);
      return *(undefined8 *)(puVar2 + 2);
    }
  }
  return 0;
}

