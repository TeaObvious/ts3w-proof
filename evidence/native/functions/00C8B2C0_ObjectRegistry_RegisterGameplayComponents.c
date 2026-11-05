/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Calls15-type default initializer then registers Location
   descriptor and stores its assigned mask in011edf08. Fresh registry therefore gives Location
   mask0x8000. Returns AL bool. */

bool __cdecl ObjectRegistry_RegisterGameplayComponents(void)

{
  bool bVar1;
  void *this;
  void *descriptor;
  
  bVar1 = ObjectRegistry_RegisterDefaultComponents();
  if (bVar1) {
    this = ObjectRegistry_GetGlobal();
    if (this != (void *)0x0) {
      descriptor = LocationComponent_GetDescriptor();
      DAT_011edf08 = ObjectRegistry_RegisterComponentType(this,descriptor);
      return true;
    }
  }
  return false;
}

