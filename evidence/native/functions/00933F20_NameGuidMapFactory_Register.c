/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. Obtain resource system; allocate16-byte factory; base
   constructor arguments resourceTypeF3A38370 and factory identityBD73F5E7, then vtable01043C08.
   Resource type is factory+0C, NOT+08. Register through system+28 with(1,factory,0); missing system
   false. Other failure propagation follows generic registration. */

bool __cdecl NameGuidMapFactory_Register(void)

{
  bool bVar1;
  int *arg0;
  undefined4 *this;
  
  arg0 = (int *)FUN_004afe80();
  if (arg0 == (int *)0x0) {
    return false;
  }
  this = FUN_004e4760(0x10,"Objects/NameGuidMapResourceFactory",0);
  if (this != (undefined4 *)0x0) {
    ResourceFactory_ConstructIdentity(this,0xf3a38370,0xbd73f5e7);
    *this = &PTR_FUN_01043c08;
    bVar1 = (**(code **)(*arg0 + 0x28))(arg0,1,this,0);
    return bVar1;
  }
  bVar1 = (**(code **)(*arg0 + 0x28))(arg0,1,(void *)0x0,0);
  return bVar1;
}

