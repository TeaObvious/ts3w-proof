/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX object sound component; RET8
   soundId,retireVoiceByte. If global audio and owner present: copies owner fullGUID +8/+C, calls
   callback dispatcher(event03A129EE,id,guid,stopReason0), then008661A0. If retire byte nonzero
   invokes manager+34 and removes matching20byte active row using (rowID&3FFFFFFF)==id. Callback
   occurs before this retirement path; untraced helper semantics remain open.
   
   Analyst PC1.67 object sound admission. Original callback/association/retirement ordering
   retained. Scoped stack-only calls expose soundId at8661A0 and virtual34; each actual receiver is
   ECX. This does not establish backend thread, stop-mode or successful playback. Selected row erase
   now names942750; packed low30-bit lookup remains unchanged. */

void __thiscall ObjectSound_FinishAndRetire(void *this,uint soundId,byte retireVoice)

{
  int iVar1;
  uint *puVar2;
  int *piVar3;
  uint *row;
  undefined4 local_8;
  undefined4 local_4;
  
  if ((DAT_011d9c40 != 0) && ((void *)(DAT_011d9c40 + -0x27bd0) != (void *)0x0)) {
    iVar1 = *(int *)((int)this + 4);
    if (iVar1 != 0) {
      local_8 = *(undefined4 *)(iVar1 + 8);
      local_4 = *(undefined4 *)(iVar1 + 0xc);
      Audio_DispatchFinishedSoundCallbackEvent
                ((void *)(DAT_011d9c40 + -0x27bd0),0x3a129ee,soundId,(ulonglong *)&local_8,0);
    }
    FUN_008661a0(soundId);
  }
  if (retireVoice != 0) {
    piVar3 = (int *)FUN_008afe00();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x34))(soundId);
    }
    puVar2 = *(uint **)((int)this + 0x24);
    row = *(uint **)((int)this + 0x20);
    if (row != puVar2) {
      do {
        if ((*row & 0x3fffffff) == soundId) break;
        row = row + 5;
      } while (row != puVar2);
      if (row != puVar2) {
        ObjectSoundRows_Erase((void *)((int)this + 0x20),row);
      }
    }
  }
  return;
}

