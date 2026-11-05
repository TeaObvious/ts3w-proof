/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Physical object GUID64 uses two stack DWORDs with plain RET and
   caller cleanup, despite inferred no-arg/stdcall C. Dispatches original World event19 once,
   returns its low-byte result. Does not perform native movement/component admission. */

undefined1 World_DispatchHandToolAllowUserPickup(void)

{
  undefined4 *puVar1;
  undefined **local_60 [2];
  ushort local_58;
  undefined2 local_56;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  local_60[0] = &PTR_FUN_00fba6f4;
  local_58 = 0;
  local_56 = 0;
  Variant_AssignUInt64(local_60,(ulonglong *)&stack0x00000004);
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  FUN_004f64b0(local_40,(int)local_60);
  local_60[0] = &PTR_FUN_00fba6f4;
  if ((local_58 & 4) != 0) {
    FUN_004f5760(local_60,'\0');
  }
  puVar1 = World_DispatchRegisteredEventCallback(local_60,0x19,local_40,1);
  FUN_004f64b0(local_20,(int)puVar1);
  local_60[0] = &PTR_FUN_00fba6f4;
  if ((local_58 & 4) != 0) {
    FUN_004f5760(local_60,'\0');
  }
  local_40[0] = &PTR_FUN_00fba6f4;
  if ((local_38 & 4) != 0) {
    FUN_004f5760(local_40,'\0');
  }
  local_20[0] = &PTR_FUN_00fba6f4;
  if ((local_18 & 4) != 0) {
    FUN_004f5760(local_20,'\0');
  }
  return local_10;
}

