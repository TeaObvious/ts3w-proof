/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67, ECX retained lot, two signed range words, RET8, no return contract. Equal bounds do
   nothing. Otherwise first calls ACE050, then optionally dispatches message ID 041F9E24. The
   18hex-byte message uses vtable1065F8C; +8/+C receive the two lot-ID DWORDs at lot+48/+4C; +10/+14
   receive UPDATED signed minimum/maximum. Dispatcher virtual+1C receives ID,message,0,lot+364;
   message virtual+8 releases afterward. Then nonnull lot+290 receives A95F30, and 792460 is called
   with BOTH lot-ID DWORDs (caller ADD ESP,8). Existing 792460 decompiler signature may omit these
   physical inputs; read the PUSHes at ACE195..1A2. Allocation failure is not a clean Boolean
   failure: the original null branch rejoins a message dereference. Full dispatcher ownership,
   A95F30 and managed notification bodies are separate scopes. The native path mutates retained
   managers and has no generation-scoped immutable revision memo. */

void __thiscall LotLevels_ApplyRangeAndNotify(void *this,int minimumLevel,int maximumLevel)

{
  int *piVar1;
  int *piVar2;
  
  if ((minimumLevel != *(int *)((int)this + 0x17c)) || (maximumLevel != *(int *)((int)this + 0x180))
     ) {
    LotLevels_ApplyRange(this,minimumLevel,maximumLevel);
    piVar1 = (int *)MessageDispatch_GetCurrent();
    if (piVar1 != (int *)0x0) {
      piVar2 = FloorMessagePool_AcquireStorage();
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        *piVar2 = (int)&PTR_FUN_01065f8c;
        LOCK();
        piVar2[1] = 0;
        UNLOCK();
        *piVar2 = (int)&PTR_FUN_01065f8c;
        (**(code **)(*piVar2 + 4))();
      }
      piVar2[2] = *(int *)((int)this + 0x48);
      piVar2[3] = *(int *)((int)this + 0x4c);
      piVar2[4] = *(int *)((int)this + 0x17c);
      piVar2[5] = *(int *)((int)this + 0x180);
      (**(code **)(*piVar1 + 0x1c))(0x41f9e24,piVar2,0,*(undefined4 *)((int)this + 0x364));
      (**(code **)(*piVar2 + 8))();
    }
    if (*(void **)((int)this + 0x290) != (void *)0x0) {
      FUN_00a95f30(*(void **)((int)this + 0x290));
    }
    FUN_00792460();
  }
  return;
}

