/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Factory vtable01043DA8+34, code-flow-recovered exact
   original entry. ECX factory receiver unused, no stack parameters/ordinaryRET; returns EAX pointer
   or null. Allocates40hexbytes, resource identity zeros, component mask+28=0, parameter
   vector+2C/+30/+34 zeros, resource vtable01043E0C, flag+3C default30hex. Descriptor registry
   membership is not an exclusive Model/Tree renderer choice. */

void * __thiscall ObjectResourceFactory_CreateObjectParams(void *this)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_004e4500(0x40,"Objects/ObjectResource",0);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = &PTR_FUN_00fb3c14;
    LOCK();
    puVar1[1] = 0;
    UNLOCK();
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[8] = 0;
    puVar1[9] = 0;
    puVar1[7] = 0;
    puVar1[6] = 0;
    puVar1[10] = 0;
    *puVar1 = &PTR_thunk_FUN_00731c10_01043e0c;
    puVar1[0xb] = 0;
    puVar1[0xc] = 0;
    puVar1[0xd] = 0;
    puVar1[0xe] = "Objects/ComponentData";
    *(undefined1 *)(puVar1 + 0xf) = 0x30;
    return puVar1;
  }
  return (void *)0x0;
}

