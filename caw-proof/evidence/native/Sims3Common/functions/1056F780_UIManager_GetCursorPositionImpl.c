/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetCursorPositionImpl. Export
   ordinal(s): 1095. Entry VA: 0x1056f780. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006AF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UIManager_GetCursorPositionImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *unaff_retaddr;
  undefined1 local_8 [8];
  
                    /* 0x56f780  1095  UIManager_GetCursorPositionImpl */
  piVar1 = (int *)FUN_1093d2e0();
  puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0x48))(local_8);
  *unaff_retaddr = *puVar2;
  unaff_retaddr[1] = puVar2[1];
  return;
}

