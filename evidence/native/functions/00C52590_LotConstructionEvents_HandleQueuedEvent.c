/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): Analyst lot-wall event
   receiver role, not a recovered class name. ECX receiver plus UInt32 event ID and payload pointer,
   RET8; physical AL status, upper EAX artifacts. Read attached owner identities through receiver+4;
   matching branches update flags/counter fields or construct a 12-byte record (flag byte, event ID
   +4, payload pointer +8). Queue through C51F10 at receiver+30C; preserve virtual +4 retention and
   local virtual +8 release calls, including existing C4B270 record construction branches.
   Unsupported event returns AL0; selected nonmatching owner paths return AL1 without queueing. No
   channel gather, mesh tag compaction, source vertex sorting or contiguous block slicing occurs in
   this selected receiver. Full queued message consumer and geometry allocation are separate
   authorities. */

byte __thiscall LotConstructionEvents_HandleQueuedEvent(void *this,uint eventId,void *payload)

{
  uint *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined1 local_c [4];
  uint local_8;
  int *local_4;
  
  iVar2 = *(int *)((int)this + 4);
  iVar3 = *(int *)(iVar2 + 0x18);
  iVar4 = *(int *)(iVar2 + 0x10);
  iVar2 = *(int *)(iVar2 + 0x14);
  if (eventId < 0x7fd9089) {
    if (eventId == 0x7fd9088) {
      if (*(int *)((int)payload + 8) != iVar3) {
        return 1;
      }
      *(undefined1 *)((int)this + 0x54) = 1;
      return 1;
    }
    if (eventId < 0x5a591e4) {
      if (eventId == 0x5a591e3) {
        if (*(int *)((int)payload + 8) != iVar4) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) != iVar2) {
          return 1;
        }
        *(undefined4 *)((int)this + 0x34) = 0;
        return 1;
      }
      if (0x4618d00 < eventId) {
        if (eventId != 0x4618d3f) {
          return 0;
        }
        if (*(int *)((int)payload + 8) != iVar4) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) != iVar2) {
          return 1;
        }
        if (*(int *)((int)this + 0x34) == 0) {
          return 1;
        }
        *(int *)((int)this + 0x34) = *(int *)((int)this + 0x34) + -1;
        return 1;
      }
      if (eventId == 0x4618d00) {
        if (*(int *)((int)payload + 8) != iVar4) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) != iVar2) {
          return 1;
        }
        *(int *)((int)this + 0x34) = *(int *)((int)this + 0x34) + 1;
        return 1;
      }
      if (eventId == 0x3fabf1d) {
        if (*(int *)((int)payload + 8) != iVar3) {
          return 1;
        }
        *(undefined4 *)((int)this + 0x30) = *(undefined4 *)((int)payload + 0xc);
        return 1;
      }
      if (eventId != 0x3fe5dfd) {
        return 0;
      }
    }
    else if (eventId < 0x6257eb5) {
      if (((eventId != 0x6257eb4) && (eventId != 0x5c287fe)) && (eventId != 0x5f89545)) {
        return 0;
      }
    }
    else if (eventId != 0x6e130aa) {
      return 0;
    }
  }
  else if (eventId < 0xa459cc3) {
    if (eventId == 0xa459cc2) {
      if (*(int *)((int)payload + 8) != iVar3) {
        return 1;
      }
      FUN_00c4b270(local_c,0xa459cc2,payload);
      goto LAB_00c52614;
    }
    if (0xa0de2f8 < eventId) {
      if (eventId != 0xa459cc1) {
        return 0;
      }
      if (*(int *)((int)payload + 8) != iVar3) {
        return 1;
      }
      FUN_00c4b270(local_c,0xa459cc1,payload);
      goto LAB_00c52614;
    }
    if (eventId != 0xa0de2f8) {
      if (eventId == 0x7fd9113) {
        if (*(int *)((int)payload + 8) != iVar3) {
          return 1;
        }
        *(undefined1 *)((int)this + 0x54) = 0;
        return 1;
      }
      if (eventId != 0x8a283fb) {
        return 0;
      }
    }
  }
  else if (eventId != 0x312faf14) {
    if (eventId == 0x512e9251) {
      if (*(int *)((int)payload + 8) != iVar3) {
        return 1;
      }
      FUN_00c4b270(local_c,0x512e9251,payload);
    }
    else {
      if (eventId != 0xb12e899d) {
        return 0;
      }
      if (*(int *)((int)payload + 8) != iVar3) {
        return 1;
      }
      puVar1 = (uint *)((int)payload + 0x10);
      uVar5 = WallProduct_IsZeroField8COrAllowedType(puVar1);
      if (((char)uVar5 == '\0') &&
         (uVar5 = WallProduct_HasNonzeroFieldE0(puVar1), (char)uVar5 == '\0')) {
        return 1;
      }
      uVar6 = FUN_00c5bc00(puVar1);
      if ((char)uVar6 == '\0') {
        return 1;
      }
      FUN_00c4b270(local_c,0xb12e899d,payload);
    }
    goto LAB_00c52614;
  }
  if (*(int *)((int)payload + 8) != iVar4) {
    return 1;
  }
  if (*(int *)((int)payload + 0xc) != iVar2) {
    return 1;
  }
  local_8 = eventId;
  local_c[0] = 1;
  local_4 = payload;
  (**(code **)(*(int *)payload + 4))();
LAB_00c52614:
  ConstructionEventQueue_AppendRetainedRecord((void *)((int)this + 0x30c),local_c);
  if (local_4 != (int *)0x0) {
    (**(code **)(*local_4 + 8))();
  }
  return 1;
}

