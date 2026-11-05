/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Producer007569d0 allocates0x50. EAX=this is returned; ECX
   supplies object. Vtable01005238 identifies point destination. Intrusive links+4/+8 and seven
   FLOAT score weights+0x0c..+0x24 are zero; tag+0x28 zero, weight+0x2c1.0f. Facing+0x40 initialized
   from011d5170; caller fills point+0x30 and facing+0x40. */

void * __fastcall PointDestination_Initialize(void *destination)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
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
  *(undefined ***)destination = &PTR_PointDestination_GetTypeTag_01005238;
  uVar3 = uRam011d517c;
  uVar2 = uRam011d5178;
  uVar1 = uRam011d5174;
  *(undefined4 *)((int)destination + 0x40) = _DAT_011d5170;
  *(undefined4 *)((int)destination + 0x44) = uVar1;
  *(undefined4 *)((int)destination + 0x48) = uVar2;
  *(undefined4 *)((int)destination + 0x4c) = uVar3;
  return destination;
}

