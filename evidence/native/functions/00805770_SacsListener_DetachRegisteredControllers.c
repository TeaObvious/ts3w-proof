/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX listener. Iterate 24-byte controller receipt
   records listener[+4,+8). Resolve object GUID, temporarily retain object when found, find
   Animation component and remove listener registration for receipt controller ID; missing
   object/component uses receipt+14 controller pointer and unregisters listener directly if nonzero.
   Release any retained object. No queue or driver handle mapping is changed here. */

void __fastcall SacsListener_DetachRegisteredControllers(int param_1)

{
  int *piVar1;
  int iVar2;
  ulonglong *puVar3;
  void *this;
  undefined4 *this_00;
  void *this_01;
  ulonglong *puVar4;
  
  this = ObjectRegistry_GetGlobal();
  puVar4 = *(ulonglong **)(param_1 + 4);
  puVar3 = *(ulonglong **)(param_1 + 8);
  do {
    if (puVar4 == puVar3) {
      return;
    }
    if (this == (void *)0x0) {
      this_00 = (undefined4 *)0x0;
LAB_008057d7:
      if (*(int *)((int)puVar4 + 0x14) != 0) {
        AnimationController_UnregisterListener
                  ((void *)(*(int *)((int)puVar4 + 0x14) + 0xc),(int *)param_1);
      }
    }
    else {
      this_00 = ObjectRegistry_FindBorrowed(this,*puVar4);
      if (this_00 == (undefined4 *)0x0) goto LAB_008057d7;
      LOCK();
      this_00[1] = this_00[1] + 1;
      UNLOCK();
      this_01 = Object_GetComponentByMask(this_00,DAT_011dd484);
      if (this_01 == (void *)0x0) goto LAB_008057d7;
      FUN_00941a60(this_01,(int)puVar4[1]);
    }
    if (this_00 != (undefined4 *)0x0) {
      piVar1 = this_00 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this_00)(1);
      }
    }
    puVar4 = puVar4 + 3;
  } while( true );
}

