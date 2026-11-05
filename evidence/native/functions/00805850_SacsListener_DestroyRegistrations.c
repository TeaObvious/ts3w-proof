/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX listener, no incoming stack words,
   plainRET. Set listener vtable, visit24-byte registrations begin4/end8; each nonnull controller14
   unregisters listener through controller+C. Then destroy registration range and free backing
   buffer. Does not call controller StopAllAnimation; notification and retained reference children
   own their own semantics. */

void __fastcall SacsListener_DestroyRegistrations(undefined4 *param_1)

{
  int iVar1;
  void *allocation;
  int iVar2;
  
  iVar2 = param_1[1];
  iVar1 = param_1[2];
  *param_1 = &PTR_SacsListener_OnControllerStarted_01021380;
  for (; iVar2 != iVar1; iVar2 = iVar2 + 0x18) {
    if (*(int *)(iVar2 + 0x14) != 0) {
      AnimationController_UnregisterListener((void *)(*(int *)(iVar2 + 0x14) + 0xc),param_1);
    }
  }
  FUN_00805540(param_1[1],param_1[2]);
  allocation = (void *)param_1[1];
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

