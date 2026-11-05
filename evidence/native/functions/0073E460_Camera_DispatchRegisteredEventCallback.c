/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified retail PC 1.67 camera named-callback dispatch. Reads type/method string slots at
   0x011D4E58/0x011D4E68 + eventId*0x20, checks both are non-empty, then calls script-host vtable
   +0x138 with those names. Registration 0x0073E7A0 accepts IDs 0..4.
   SimIFace.CameraController::RegisterAllCallbacks maps the five enum names to exact MethodDef
   targets. See guides/callbacks/event-map.json and guides/callbacks/native/disassembly/camera-method-dispatch.objdump.txt. No
   runtime invocation observed. */

undefined4 * __cdecl
Camera_DispatchRegisteredEventCallback
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  byte bStack_18;
  
  iVar2 = 0;
  iVar3 = 0;
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  if ((&DAT_011d4e5c)[param_2 * 8] != (&DAT_011d4e58)[param_2 * 8]) {
    iVar2 = (&DAT_011d4e58)[param_2 * 8];
  }
  if ((&DAT_011d4e6c)[param_2 * 8] != (&DAT_011d4e68)[param_2 * 8]) {
    iVar3 = (&DAT_011d4e68)[param_2 * 8];
  }
  if ((iVar2 != 0) && (iVar3 != 0)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0x138))(local_20,iVar2,iVar3,param_3,param_4);
    FUN_004f64b0(local_40,iVar2);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((bStack_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  *param_1 = &PTR_FUN_00fba6f4;
  *(undefined2 *)(param_1 + 2) = 0;
  *(undefined2 *)((int)param_1 + 10) = 0;
  FUN_004f64b0(param_1,(int)local_40);
  local_40[0] = &PTR_FUN_00fba6f4;
  if ((local_38 & 4) != 0) {
    FUN_004f5760(local_40,'\0');
  }
  return param_1;
}
