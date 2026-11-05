/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_Load. Export ordinal(s):
   2217. Entry VA: 0x1098d5c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000CDD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl
SacsWrap_StateMachine_Load
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int *piStack_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98d5c0  2217  SacsWrap_StateMachine_Load */
  local_4 = param_2;
  piVar4 = (int *)0x0;
  local_8 = param_1;
  local_10 = param_3;
  local_c = param_4;
  param_1 = 0;
  uStack_24 = 0x1098d5f1;
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 != (int *)0x0) {
    uStack_24 = 0;
    uStack_28 = 0;
    uStack_2c = 0;
    cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,&param_1,0);
    if (cVar1 != '\0') {
      if ((piStack_14 != (int *)0x0) &&
         (iVar3 = (**(code **)(*piStack_14 + 0xc))(0x2d5df13), iVar3 != 0)) {
        piVar5 = (int *)0x0;
        uStack_2c = 0;
        cVar1 = (**(code **)(*piVar2 + 0xc))(&uStack_28,&uStack_2c,0,0,0,0);
        if (cVar1 != '\0') {
          if (piVar5 != (int *)0x0) {
            piVar4 = (int *)(**(code **)(*piVar5 + 0xc))(0x1660396);
          }
          FUN_103c5720((void *)(iVar3 + 0x120),piVar4);
          (**(code **)(*piVar4 + 4))();
        }
        return iVar3;
      }
      (**(code **)(*piStack_14 + 4))();
    }
  }
  return 0;
}

