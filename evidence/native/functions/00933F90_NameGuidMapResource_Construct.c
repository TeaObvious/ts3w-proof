/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX resource returns this/EAX. Vtable01043C8C, map
   at+28: bucketCount1 at+30, static bucket pointer+2C, count0+34, load/growth floats1.0/2.0
   at+38/+3C. Tag+44 Objects/NameGuidMapResource. Resource interface ID mapping is established at
   factory query, not guessed from constructor name. */

void * __thiscall NameGuidMapResource_Construct(void *this)

{
  undefined4 uVar1;
  
  *(undefined ***)this = &PTR_FUN_00fb3c14;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  uVar1 = DAT_00f998f8;
  UNLOCK();
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined ***)this = &PTR_thunk_FUN_00731c10_01043c8c;
  *(undefined4 *)((int)this + 0x38) = uVar1;
  *(undefined4 *)((int)this + 0x3c) = DAT_0103fd88;
  *(char **)((int)this + 0x44) = "Objects/NameGuidMapResource";
  *(undefined4 *)((int)this + 0x30) = 1;
  *(undefined4 **)((int)this + 0x2c) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  return this;
}

