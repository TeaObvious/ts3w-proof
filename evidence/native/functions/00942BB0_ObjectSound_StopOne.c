/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component, UInt32 sound ID + low-byte stopMode RET8.
   Find first masked row, clear retained name with405910(empty,empty), remember row bit40000000. If
   active4C AND INPUT soundId bit40000000 clear, calls8608E0(input ID,stopMode), leaves removal to
   completion. Else immediate942A00(input ID,true), then also8608E0 only if found row had40000000.
   Input bit test is not row bit test. Backend stop semantics/thread unexpanded. */

void __thiscall ObjectSound_StopOne(void *this,uint soundId,byte stopMode)

{
  byte bVar1;
  uint *puVar2;
  
  for (puVar2 = *(uint **)((int)this + 0x20);
      (puVar2 != *(uint **)((int)this + 0x24) && ((*puVar2 & 0x3fffffff) != soundId));
      puVar2 = puVar2 + 5) {
  }
  bVar1 = 0;
  if (puVar2 != *(uint **)((int)this + 0x24)) {
    FUN_00405910(puVar2 + 1,&DAT_00f98f7a,&DAT_00f98f7a);
    bVar1 = (byte)(*puVar2 >> 0x1e) & 1;
  }
  if ((*(char *)((int)this + 0x4c) != '\0') && ((soundId & 0x40000000) == 0)) {
                    /* cdecl TWO stack words soundId and byte stopMode; old one-argument C dropped
                       stopMode. */
    FUN_008608e0(soundId,stopMode);
    return;
  }
  ObjectSound_FinishAndRetire(this,soundId,1);
  if (bVar1 != 0) {
    FUN_008608e0(soundId,stopMode);
  }
  return;
}

