/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GridSetCellTextValueImpl. Export
   ordinal(s): 1122. Entry VA: 0x1056fa30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006D1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
UIManager_GridSetCellTextValueImpl(uint param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 unaff_EBX;
  undefined4 unaff_retaddr;
  
  if ((((param_4 != 0) && (piVar1 = (int *)FUN_1055b120(), (param_1 & 0xff000000) == 0x30000000)) &&
      (piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xaf1ee902), piVar2 != (int *)0x0)) {
    uVar3 = (**(code **)(*piVar1 + 0x58))(param_4);
    (**(code **)(*piVar2 + 0x1dc))(unaff_EBX,unaff_retaddr,uVar3,0,1,0);
  }
  return;
}

