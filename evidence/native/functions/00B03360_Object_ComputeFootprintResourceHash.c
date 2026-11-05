/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): cdecl one nativeobject pointer.
   NullobjectreturnsUInt64zero; getFootprintComponent usingcomponentmask11E9FA8,returnzero
   ifabsent,otherwise946890(component,maskFFFFFFFF). Return64bitsEDX:EAX. This is not a
   script/household identity accessor; callersACA430andACD390 store/comparelot+310hash. */

undefined8 __cdecl Object_ComputeFootprintResourceHash(void *param_1)

{
  void *this;
  undefined8 uVar1;
  
  if (param_1 != (void *)0x0) {
    this = Object_GetComponentByMask(param_1,DAT_011e9fa8);
    if (this != (void *)0x0) {
      uVar1 = FootprintComponent_ComputeResourceHash(this,0xffffffff);
      return uVar1;
    }
  }
  return 0;
}

