/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physicalcdecl oneSIGNEDInt32 amount, plainRET,ALBoolean. Marshals [entryESP+4] into callback
   variant, dispatches Worldevent50(0x32),argc1,returnsBool. OriginalSimIFace.World
   privateFamilyFundsMakeChange forwardsdelegate; GameplayLotManager
   checksactivehousehold/fundsandModifyFunds. Preservemanagedhooks;
   doNOTduplicatehouseholdrulesinengine. Oldstdcall/noargs metadata contradicted D395AFpush/ADDESP4
   andcallee stackread. */

bool __cdecl WorldCallback_FamilyFundsMakeChange(int amount)

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
  FUN_004f5ea0(local_60,&amount);
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  FUN_004f64b0(local_40,(int)local_60);
  local_60[0] = &PTR_FUN_00fba6f4;
  if ((local_58 & 4) != 0) {
    FUN_004f5760(local_60,'\0');
  }
  puVar1 = World_DispatchRegisteredEventCallback(local_60,0x32,local_40,1);
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
  return (bool)local_10;
}

