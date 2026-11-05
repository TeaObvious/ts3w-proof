/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX; content, outfit key pointer,in/out key pointer; RET 12,
   BooleanAL. Null content fails. Storescontent at+f0, opens TravelDBslot+40 under
   criticalsection+110 if+70 null, opens ExportDBslot+74 if+a4 null. Requires ExportDB capability
   bit2; then calls009cb0d0 with flag1 and TravelDB+70. Successful write path releasescontent
   throughvtable+8(1) and clears+f0. Pre-write failures returnfalse without that release in this
   body; ownership outside this body remains unresolved. */

bool __thiscall
SimStorage_SaveTravelSim
          (void *this,void *simContent,TravelNativeResourceKey *outfitKey,
          TravelNativeResourceKey *exportKey)

{
  bool bVar1;
  uint uVar2;
  undefined4 local_78 [30];
  
  if (simContent == (void *)0x0) {
    return false;
  }
  *(void **)((int)this + 0xf0) = simContent;
  FUN_00408d60((void *)((int)this + 0xf4),&DAT_00fba6c4,&DAT_00fba6c4);
  FUN_00d4f9e0(local_78);
  if (*(int *)((int)this + 0x70) == 0) {
    EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x110));
    bVar1 = SimStorage_OpenDatabaseSlot(this,(void *)((int)this + 0x40),false);
    LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0x110));
    if (!bVar1) goto LAB_009cb7a0;
  }
  if (*(int *)((int)this + 0xa4) == 0) {
    bVar1 = SimStorage_OpenDatabaseSlot(this,(void *)((int)this + 0x74),false);
    if (!bVar1) goto LAB_009cb7a0;
  }
  uVar2 = (**(code **)(**(int **)((int)this + 0xa4) + 0x20))();
  if ((uVar2 & 2) != 0) {
    bVar1 = SimStorage_WriteSimRecordAndDependencies
                      (this,*(void **)((int)this + 0xf0),*(void **)((int)this + 0x70),local_78,1,
                       outfitKey,exportKey);
    if (*(int **)((int)this + 0xf0) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0xf0) + 8))(1);
    }
    *(undefined4 *)((int)this + 0xf0) = 0;
    FUN_00d4fa50(local_78);
    return bVar1;
  }
LAB_009cb7a0:
  FUN_00d4fa50(local_78);
  return false;
}

