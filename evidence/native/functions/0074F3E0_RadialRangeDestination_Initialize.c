/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Producer00756c50 allocates0x80. EAX pointer return.
   Vtable010052ac identifies radial destination. Cone+0x30 defaults(0,0,1,0); center+0x40 zero;
   targetID+0x50/+0x54 zero. Defaults: facing+0x58=0; cone angle+0x5c=0x40c90fdb(two*pi);
   min+0x60=0; max+0x64=1; preferred+0x68=-1; spacing+0x6c=0.5; rayY+0x70=0. */

void * __fastcall RadialRangeDestination_Initialize(void *destination)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = DAT_00f998f8;
  *(undefined4 *)((int)destination + 4) = 0;
  *(undefined4 *)((int)destination + 8) = 0;
  *(undefined4 *)((int)destination + 0x2c) = uVar1;
  *(undefined4 *)((int)destination + 0x28) = 0;
  *(undefined4 *)((int)destination + 0xc) = 0;
  *(undefined4 *)((int)destination + 0x10) = 0;
  *(undefined4 *)((int)destination + 0x14) = 0;
  *(undefined4 *)((int)destination + 0x18) = 0;
  *(undefined4 *)((int)destination + 0x1c) = 0;
  *(undefined4 *)((int)destination + 0x20) = 0;
  *(undefined4 *)((int)destination + 0x24) = 0;
  *(undefined ***)destination = &PTR_RadialRangeDestination_GetTypeTag_010052ac;
  *(undefined4 *)((int)destination + 0x30) = 0;
  *(undefined4 *)((int)destination + 0x34) = 0;
  *(undefined4 *)((int)destination + 0x38) = uVar1;
  *(undefined4 *)((int)destination + 0x3c) = 0;
  *(undefined4 *)((int)destination + 0x40) = 0;
  *(undefined4 *)((int)destination + 0x44) = 0;
  *(undefined4 *)((int)destination + 0x48) = 0;
  *(undefined4 *)((int)destination + 0x4c) = 0;
  *(undefined4 *)((int)destination + 0x50) = 0;
  *(undefined4 *)((int)destination + 0x54) = 0;
  *(undefined4 *)((int)destination + 0x58) = 0;
  uVar2 = DAT_010051a8;
  *(undefined4 *)((int)destination + 100) = uVar1;
  *(undefined4 *)((int)destination + 0x68) = DAT_00fab218;
  uVar1 = _DAT_00f9b5b4;
  *(undefined4 *)((int)destination + 0x5c) = uVar2;
  *(undefined4 *)((int)destination + 0x60) = 0;
  *(undefined4 *)((int)destination + 0x6c) = uVar1;
  *(undefined4 *)((int)destination + 0x70) = 0;
  return destination;
}

