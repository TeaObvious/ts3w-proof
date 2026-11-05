/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
    Audio_SubmitHandleStopCommand(soundId,stopMode);
    return;
  }
  ObjectSound_FinishAndRetire(this,soundId,1);
  if (bVar1 != 0) {
    Audio_SubmitHandleStopCommand(soundId,stopMode);
  }
  return;
}

