/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_EnableObjectFollow. Export ordinal(s):
   275. Entry VA: 0x1052fc90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A31. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_EnableObjectFollow(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  undefined4 *puVar3;
  float fVar4;
  char cVar5;
  undefined4 auStack_28 [9];
  
                    /* 0x52fc90  275  Camera_EnableObjectFollow */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        if (this != (void *)0x0) {
          cVar5 = '\x01';
          fVar4 = 1.0;
          puVar3 = (undefined4 *)FUN_1055db20(&stack0x0000000c,auStack_28);
          FUN_1076b470(this,param_1,param_2,puVar3,fVar4,cVar5);
          return;
        }
        if (this_00 != (void *)0x0) {
          puVar3 = (undefined4 *)FUN_1055db20(&stack0x0000000c,auStack_28);
          FUN_1076c960(this_00,param_1,param_2,puVar3);
        }
      }
    }
  }
  return;
}

