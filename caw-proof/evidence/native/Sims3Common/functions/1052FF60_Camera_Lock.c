/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_Lock. Export ordinal(s): 294. Entry VA:
   0x1052ff60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A39. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_Lock(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  undefined4 *puVar3;
  float in_stack_00000018;
  float in_stack_0000001c;
  float in_stack_00000020;
  float in_stack_00000024;
  undefined4 auStack_24 [8];
  
                    /* 0x52ff60  294  Camera_Lock */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (this != (void *)0x0) {
          puVar3 = (undefined4 *)FUN_1055db20(&stack0x0000000c,auStack_24);
          FUN_1076b4f0(this,param_1,param_2,puVar3,in_stack_00000018,in_stack_0000001c,
                       in_stack_00000020,in_stack_00000024);
        }
      }
    }
  }
  return;
}

