/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a48 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetObjectsToIgnoreForRoute [assembly=ScriptCore token=0x0600112C; handle:
   System.UInt32; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Route::Route_GetObjectsToIgnoreForRoute(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 unaff_EBP;
  uint uVar5;
  undefined4 auStack_c [3];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      piVar3 = (int *)FUN_0081c520((int)(piVar2 + 0x56));
      iVar4 = piVar3[1] - *piVar3 >> 3;
      if (iVar4 != 0) {
        (**(code **)(*piVar1 + 0x88))(auStack_c,iVar4);
        iVar4 = *piVar3;
        uVar5 = 0;
        if (piVar3[1] - iVar4 >> 3 != 0) {
          do {
            auStack_c[0] = *(undefined4 *)(iVar4 + 4 + uVar5 * 8);
            (**(code **)(*piVar1 + 0xa0))(&stack0xffffffec,&stack0xfffffff0,uVar5,1);
            iVar4 = *piVar3;
            uVar5 = uVar5 + 1;
          } while (uVar5 < (uint)(piVar3[1] - iVar4 >> 3));
        }
        (**(code **)(*piVar2 + 0x14))();
        return unaff_EBP;
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

