/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physicalcdecl noargs/plainRET,ALBoolean. Actual World_DispatchRegisteredEventCallback
   event51(0x33),argc0. D1A870 Begin consumesAL and setsundoablefree14=(AL==0),
   overridingconstructorfree1. Retains originalmanagedFamilyFundsCanBeCharged hook;
   noenginehouseholdpolicyisdefinedbythiscallbackwrapper.
   RawassemblyCALLstack/RET,notseededstdcallmetadata,governsABI. */

bool __cdecl WorldCallback_FamilyFundsCanBeCharged(void)

{
  undefined4 *puVar1;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined1 local_30;
  undefined **local_20 [2];
  byte local_18;
  
  local_40[0] = &PTR_FUN_00fba6f4;
  local_38 = 0;
  local_36 = 0;
  puVar1 = World_DispatchRegisteredEventCallback(local_20,0x33,0,0);
  FUN_004f64b0(local_40,(int)puVar1);
  local_20[0] = &PTR_FUN_00fba6f4;
  if ((local_18 & 4) != 0) {
    FUN_004f5760(local_20,'\0');
  }
  local_40[0] = &PTR_FUN_00fba6f4;
  if ((local_38 & 4) != 0) {
    FUN_004f5760(local_40,'\0');
  }
  return (bool)local_30;
}

