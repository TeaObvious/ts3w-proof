/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component, unused stack DWORD RET4 Boolean ALtrue on
   every path. Already active no-op. Sets active4C=1 BEFORE work. If rows exist: copy vector9433E0,
   destroy original names942470, reset original end=begin, scan copied rows. Each nonempty name
   with40000000 clear calls942D20(name,flags1,relatedNULL,same low30-bit ID); ignores replay
   rejection/result. Independently copies every40000000 row back without replay, even empty.
   Ordinary unnamed rows without40000000 disappear. Destroys copy names and frees non-inline copy
   storage. This is replay/admission at activation, not blanket preloading or proof of successful
   backend starts. */

bool __thiscall ObjectSound_ActivateAndReplay(void *this,uint unusedEventWord)

{
  int *sourceVector;
  uint *puVar1;
  uint *puVar2;
  uint *puVar3;
  uint *local_28;
  uint *local_24;
  uint *local_18;
  
  if (*(char *)((int)this + 0x4c) == '\0') {
    sourceVector = (int *)((int)this + 0x20);
    *(undefined1 *)((int)this + 0x4c) = 1;
    if (*sourceVector != *(int *)((int)this + 0x24)) {
      ObjectSoundRows_CopyVector(&local_28,sourceVector);
      ObjectSoundRows_DestroyNames((void *)*sourceVector,*(void **)((int)this + 0x24));
      puVar2 = local_24;
      *(int *)((int)this + 0x24) = *sourceVector;
      for (puVar3 = local_28; puVar3 != puVar2; puVar3 = puVar3 + 5) {
        if (((byte *)puVar3[1] != (byte *)puVar3[2]) && ((*puVar3 & 0x40000000) == 0)) {
                    /* Activation reuses low30-bit handle but forces flags1 and relatedNULL; failed
                       admission is ignored and row is not automatically retained. */
          ObjectSound_StartWithAdmissionChecks
                    (this,(byte *)puVar3[1],1,(void *)0x0,*puVar3 & 0x3fffffff);
        }
        if ((*puVar3 & 0x40000000) != 0) {
          puVar1 = *(uint **)((int)this + 0x24);
          if (puVar1 < *(uint **)((int)this + 0x28)) {
            *(uint **)((int)this + 0x24) = puVar1 + 5;
            if (puVar1 != (uint *)0x0) {
              *puVar1 = *puVar3;
              FUN_004059c0(puVar1 + 1,puVar3 + 1);
            }
          }
          else {
            FUN_009427a0(sourceVector,puVar1,puVar3);
          }
        }
      }
      ObjectSoundRows_DestroyNames(local_28,local_24);
      if ((local_28 != (uint *)0x0) && (local_28 != local_18)) {
        Memory_FreeIfNonNull(local_28);
      }
    }
    return true;
  }
  return true;
}

