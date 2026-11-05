/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 main camera object-follow core. Physical ECX receiver, stack4 object pointer,
   stack8 offset pointer, stackC Float32 seconds and stack10 final flag slot; RET10h. Preserve
   existing undefined return and inferred char flag metadata; a DWORD is read/pushed from that flag
   slot and downstream semantic width remains unresolved. Invoke the initial retirement helper,
   update the retained object reference, then for a nonnull selected object invoke its
   follow-enabled notification before copying sixteen offset bytes and setting active. Point-query
   success starts the observed acquisition with supplied seconds and flag sequence, then stores a
   later low-byte result; failure invokes retirement. Child transforms/events/acquisition/retirement
   internals and complete trajectory behavior remain unproved. Complete existing79 instructions215
   owned bytes; no instruction, ABI or neighbor definition changed. */

void __thiscall
MainCamera_ApplyObjectFollow
          (void *this,undefined4 *followedObject,undefined4 *offsetWords,float seconds,
          char followFlags)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  float afStack_20 [7];
  
  FUN_00973db0((int)this);
  puVar3 = *(undefined4 **)((int)this + 0x81c);
  if (followedObject != puVar3) {
    if (followedObject != (undefined4 *)0x0) {
      LOCK();
      followedObject[1] = followedObject[1] + 1;
      UNLOCK();
    }
    *(undefined4 **)((int)this + 0x81c) = followedObject;
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  iVar2 = *(int *)((int)this + 0x81c);
  if (iVar2 != 0) {
    FUN_00971d60(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),1);
    uVar6 = offsetWords[1];
    uVar4 = offsetWords[2];
    uVar5 = offsetWords[3];
    *(undefined4 *)((int)this + 0x820) = *offsetWords;
    *(undefined4 *)((int)this + 0x824) = uVar6;
    *(undefined4 *)((int)this + 0x828) = uVar4;
    *(undefined4 *)((int)this + 0x82c) = uVar5;
    *(undefined1 *)((int)this + 0x818) = 1;
    uVar6 = FUN_00971030(this,afStack_20);
    if ((char)uVar6 != '\0') {
      FUN_009746e0(this,afStack_20,seconds,'\x01','\0','\0',followFlags);
      uVar6 = FUN_00971120((int)this);
      *(char *)((int)this + 0x819) = (char)uVar6;
      return;
    }
    FUN_00973db0((int)this);
  }
  return;
}

