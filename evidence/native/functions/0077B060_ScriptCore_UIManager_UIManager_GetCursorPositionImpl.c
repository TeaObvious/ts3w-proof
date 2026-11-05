/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ec8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetCursorPositionImpl [assembly=ScriptCore token=0x06000E14;
   outPos: Sims3.SimIFace.Vector2&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.UIManager::UIManager_GetCursorPositionImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *unaff_retaddr;
  undefined1 local_8 [8];
  
  piVar1 = (int *)FUN_0050af90();
  puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0x48))(local_8);
  *unaff_retaddr = *puVar2;
  unaff_retaddr[1] = puVar2[1];
  return;
}

