/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Script value event. Physical stack4/8 carry fullGUID, despite no-argument stored prototype. Builds event argument, dispatches slot0x30, obtains returned variant value through local destination/EBP into EAX and cleans variant resources. Plain RET; caller removes bothGUID words. Complete scheduler, exception and variant ownership are separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00791290_FUN_00791290.asm
 */

undefined4 FUN_00791290(void)

{
  undefined4 *puVar1;
  ulonglong uStack00000004;
  undefined **local_60 [2];
  ushort local_58;
  undefined2 local_56;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  undefined4 local_10;
  
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  local_60[0] = &PTR_FUN_00fba6f4;
  local_58 = 0;
  local_56 = 0;
  Variant_AssignUInt64(local_60,&uStack00000004);
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  FUN_004f64b0(local_40,(int)local_60);
  local_60[0] = &PTR_FUN_00fba6f4;
  if ((local_58 & 4) != 0) {
    FUN_004f5760(local_60,'\0');
  }
  puVar1 = World_DispatchRegisteredEventCallback(local_60,0x30,local_40,1);
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

