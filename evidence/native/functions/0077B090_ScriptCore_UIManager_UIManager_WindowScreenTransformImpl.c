/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ee8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_WindowScreenTransformImpl [assembly=ScriptCore token=0x06000E18;
   winHandle: System.UInt32, inPos: Sims3.SimIFace.Vector2&, outPos: Sims3.SimIFace.Vector2&,
   winToScreen: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.UIManager::UIManager_WindowScreenTransformImpl(uint param_1,char param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *unaff_retaddr;
  undefined4 uStack_18;
  uint uStack_14;
  undefined1 auStack_10 [8];
  undefined4 *puStack_8;
  
  uStack_14 = 0x77b098;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_14 = param_1;
    uStack_18 = 0x77b0b9;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar1 != (int *)0x0) {
      uStack_18 = 0xeeee8218;
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))();
      if (piVar1 != (int *)0x0) {
        if (param_2 != '\0') {
          puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xc4))(&uStack_18);
          *puStack_8 = *puVar2;
          puStack_8[1] = puVar2[1];
          return;
        }
        puVar2 = (undefined4 *)
                 (**(code **)(*piVar1 + 200))(auStack_10,*unaff_retaddr,unaff_retaddr[1]);
        *puStack_8 = *puVar2;
        puStack_8[1] = puVar2[1];
      }
    }
  }
  return;
}

