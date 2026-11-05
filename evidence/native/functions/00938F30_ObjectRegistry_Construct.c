/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Initializes 1033 bucket heads, sentinel=-1 at+1034,
   count+1038=0; 32 descriptor/hash/mask slots, nextMask+11c4=1, registeredCount+11c8=0.
   Active-object vector has a reserved zero entry. Constructor accepts optional allocator. */

void * __thiscall ObjectRegistry_Construct(void *this,void *allocator)

{
  undefined4 *puVar1;
  void *pvVar2;
  
  FUN_0059f4c0(this,0x3defae8,0);
  *(undefined ***)this = &PTR_FUN_01043ed4;
  *(undefined4 *)((int)this + 0x1038) = 0;
  memset((void *)((int)this + 0x10),0,0x1024);
  *(undefined4 *)((int)this + 0x1034) = 0xffffffff;
  pvVar2 = allocator;
  if (allocator == (void *)0x0) {
    pvVar2 = (void *)FUN_0092f9c0();
  }
  *(void **)((int)this + 0x1040) = pvVar2;
  *(undefined4 *)((int)this + 0x11c4) = 1;
  *(undefined4 *)((int)this + 0x11c8) = 0;
  *(undefined4 *)((int)this + 0x11cc) = 0;
  *(undefined4 *)((int)this + 0x11d0) = 0;
  *(undefined4 *)((int)this + 0x11d4) = 0;
  *(undefined4 *)((int)this + 0x11d8) = 0;
  *(undefined4 *)((int)this + 0x11dc) = 0;
  *(char **)((int)this + 0x11e0) = "Objects/ObjectService/ObjectsToUpdate";
  *(undefined1 *)((int)this + 0x11e4) = 0;
  *(undefined4 *)((int)this + 0x11e8) = 0;
  memset((void *)((int)this + 0x1044),0,0x80);
  memset((void *)((int)this + 0x10c4),0,0x80);
  memset((void *)((int)this + 0x1144),0,0x80);
  puVar1 = *(undefined4 **)((int)this + 0x11d8);
  allocator = (void *)0x0;
  if (puVar1 < *(undefined4 **)((int)this + 0x11dc)) {
    *(undefined4 **)((int)this + 0x11d8) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = 0;
      return this;
    }
  }
  else {
    FUN_00982420((undefined4 *)((int)this + 0x11d4),puVar1,&allocator);
  }
  return this;
}

