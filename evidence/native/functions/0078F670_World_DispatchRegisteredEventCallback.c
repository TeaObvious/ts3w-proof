/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified retail PC 1.67 World callback dispatch branch. Reads delegate slot 0x011D7A78 +
   eventId*0x24; if non-null calls script-host vtable +0x134. Otherwise resolves the named
   registration through 0x00789A70 and calls host vtable +0x138 when pointers exist. Registration is
   at 0x00786580 (delegate) / 0x00796550 (names). Raw instructions in guides/callbacks/native/disassembly/world-event-dispatch.objdump.txt; static path, not a runtime observation. */

undefined4 * __cdecl
World_DispatchRegisteredEventCallback
          (undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int local_44;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  byte bStack_18;
  
  iVar2 = *(int *)(&DAT_011d7a78 + param_2 * 0x24);
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  if (iVar2 == 0) {
    FUN_00789a70(param_2,&param_2,&local_44);
    iVar2 = param_2;
    if ((param_2 != 0) && (local_44 != 0)) {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar2 = (**(code **)(*piVar1 + 0x138))(local_20,iVar2,local_44,param_3,param_4);
      FUN_004f64b0(local_40,iVar2);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((bStack_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
  }
  else {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0x134))(local_20,iVar2,param_3,param_4);
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
