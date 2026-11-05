/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_DestroyLayoutImpl. Export ordinal(s):
   1081. Entry VA: 0x1056f5a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600068F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_DestroyLayoutImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    iVar2 = (**(code **)(*piVar1 + 0xd8))(param_1);
    if (iVar2 != 0) {
      iVar3 = *(int *)(iVar2 + 0xa4) + -1;
      *(int *)(iVar2 + 0xa4) = iVar3;
      if (iVar3 == 0) {
        *(undefined4 *)(iVar2 + 0xa4) = 1;
        (*(code *)**(undefined4 **)(iVar2 + 0xa0))(1);
      }
    }
  }
  return;
}

