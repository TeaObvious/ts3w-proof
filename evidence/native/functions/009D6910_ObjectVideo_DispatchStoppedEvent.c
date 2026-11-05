/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 physical stdcall with one stackword message pointer, RET4. Null message skips
   dispatch and still returns AL1. Nonnull message supplies UInt64 GUID at+8 to
   Variant_AssignUInt64, then calls World_DispatchRegisteredEventCallback for slot14h with one
   argument; returned and argument variants are cleaned afterward. Only AL1 is established:
   decompiled upper return bits are cleanup artifacts. The loaded managed World event and listeners
   remain outside this native adapter body. */

undefined4 ObjectVideo_DispatchStoppedEvent(int param_1)

{
  undefined4 *puVar1;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  byte local_18;
  
  puVar1 = (undefined4 *)0x0;
  if (param_1 != 0) {
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    Variant_AssignUInt64(local_40,(ulonglong *)(param_1 + 8));
    puVar1 = World_DispatchRegisteredEventCallback(local_20,0x14,local_40,1);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      puVar1 = (undefined4 *)FUN_004f5760(local_20,'\0');
    }
    local_40[0] = &PTR_FUN_00fba6f4;
    if ((local_38 & 4) != 0) {
      puVar1 = (undefined4 *)FUN_004f5760(local_40,'\0');
    }
  }
  return CONCAT31((int3)((uint)puVar1 >> 8),1);
}

