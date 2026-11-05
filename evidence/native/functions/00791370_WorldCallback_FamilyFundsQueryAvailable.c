/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physicalcdecl noargs/plainRET,fullEAXInt32. DispatchesWorldevent49(0x31),argc0 to
   originalmanagedFamilyFundsQueryAvailable. No
   householdimplementationorcapturedbalanceisembeddedhere; gameplaydelegateownsit. */

int __cdecl WorldCallback_FamilyFundsQueryAvailable(void)

{
  undefined4 *puVar1;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  int local_30;
  undefined **local_20 [2];
  byte local_18;
  
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  puVar1 = World_DispatchRegisteredEventCallback(local_20,0x31,0,0);
  FUN_004f64b0(local_40,(int)puVar1);
  local_20[0] = &PTR_FUN_00fba6f4;
  if ((local_18 & 4) != 0) {
    FUN_004f5760(local_20,'\0');
  }
  local_40[0] = &PTR_FUN_00fba6f4;
  if ((local_38 & 4) != 0) {
    FUN_004f5760(local_40,'\0');
  }
  return local_30;
}

