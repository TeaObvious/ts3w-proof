/* Analyst note (PC1.67 construction topology/projection counterpart): Analyst floor event receiver
   role from actual per-level consumers, not recovered symbol. ECX receiver plus UInt32 event
   ID/payload pointer, RET8; physical AL result. Require enabled byte+70 and nonnull attached lot+8.
   Event/owner identity branches change flags or nesting counter +80, including guarded
   decrement/flush. Relevant matched events with counter0 call AA3890 immediately; otherwise
   construct local retained event record through C1EC20, append at+84 through A6CA70, release local
   payload virtual+8. Unsupported IDs and disabled/null-lot path return AL0; handled/nonmatching
   identity branches preserve their actual AL1 behavior. No parity with current managed task/cache
   priority or mesh array selection is established. */

byte __thiscall FloorRenderEvents_HandleOrQueue(void *this,uint eventId,void *payload)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  undefined4 local_8;
  int *local_4;

  if ((*(char *)((int)this + 0x70) == '\0') || (iVar2 = *(int *)((int)this + 8), iVar2 == 0)) {
    return 0;
  }
  iVar1 = *(int *)(iVar2 + 0x10);
  iVar2 = *(int *)(iVar2 + 0x14);
  if (eventId < 0x84f578c) {
    if (eventId == 0x84f578b) {
      if (*(int *)((int)payload + 8) != iVar1) {
        return 1;
      }
      if (*(int *)((int)payload + 0xc) == iVar2) {
        *(undefined1 *)((int)this + 0x73) = *(undefined1 *)((int)payload + 0x10);
        return 1;
      }
      return 1;
    }
    if (eventId < 0x462ac2f) {
      if (eventId == 0x462ac2e) {
        if (*(int *)((int)payload + 8) != iVar1) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) != iVar2) {
          return 1;
        }
        /* 00AA442D: A zero end counter skips decrement but still reaches flush; any nonzero DWORD is decremented, not only signed-positive counts. Overflow and reentrant flush safety are not guarded here. */
        if (*(int *)((int)this + 0x80) != 0) {
          *(int *)((int)this + 0x80) = *(int *)((int)this + 0x80) + -1;
        }
        if (*(int *)((int)this + 0x80) == 0) {
          FlushDeferredFloorMessages(this);
          return 1;
        }
        return 1;
      }
      if (0x431bfc9 < eventId) {
        if (eventId != 0x462ac25) {
          return 0;
        }
        if (*(int *)((int)payload + 8) != iVar1) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) == iVar2) {
          *(int *)((int)this + 0x80) = *(int *)((int)this + 0x80) + 1;
          return 1;
        }
        return 1;
      }
      /* 00AA4394: Exact event0431BFC9 branch goes to owner-pair comparison atAA45EA; message-ID coincidence alone does not bypass owner filtering. */
      if (eventId != 0x431bfc9) {
        if (eventId == 0x3fe8ba9) {
          if (*(int *)((int)payload + 8) != iVar1) {
            return 1;
          }
          if (*(int *)((int)payload + 0xc) != iVar2) {
            return 1;
          }
          eventId = 0x3fe8ba9;
          goto LAB_00aa4600;
        }
        bVar3 = eventId == 0x41f88ac;
        goto LAB_00aa45de;
      }
    }
    else if (eventId < 0x5c2804a) {
      if (eventId != 0x5c28049) {
        if (eventId == 0x5542b06) {
          if (*(int *)((int)payload + 8) != iVar1) {
            return 1;
          }
          if (*(int *)((int)payload + 0xc) != iVar2) {
            return 1;
          }
          iVar2 = FUN_00aa0aa0(this,0,'\x01');
          if (iVar2 == 0) {
            return 1;
          }
          if (*(void **)(iVar2 + 0x100) == (void *)0x0) {
            return 1;
          }
          FUN_00a88f20(*(void **)(iVar2 + 0x100),'\x01');
          return 1;
        }
        if (eventId != 0x5bb12e9) {
          return 0;
        }
        if (*(int *)((int)payload + 8) != iVar1) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) != iVar2) {
          return 1;
        }
        if (*(int *)((int)this + 0x80) == 0) {
          return 1;
        }
        /* 00AA44A4: Handled event05BB12E9 resets a nonzero counter and flushes. That ID is absent from AA0640s inspected18-ID registration table; this branch alone does not prove a subscribed delivery path. */
        *(undefined4 *)((int)this + 0x80) = 0;
        FlushDeferredFloorMessages(this);
        return 1;
      }
    }
    else {
      bVar3 = eventId == 0x5ff543b;
LAB_00aa45de:
      if (!bVar3) {
        return 0;
      }
    }
  }
  else if (eventId < 0xa69558d) {
    if (eventId != 0xa69558c) {
      if (eventId < 0x934a19f) {
        if ((eventId == 0x934a19e) || (eventId == 0x91a65f9)) goto LAB_00aa45ea;
        bVar3 = eventId == 0x92c9a96;
      }
      else {
        bVar3 = eventId == 0x97ac12e;
      }
      goto LAB_00aa45de;
    }
  }
  else {
    if (0x114765f7 < eventId) {
      bVar3 = eventId == 0x3175ae42;
      goto LAB_00aa45de;
    }
    if (eventId != 0x114765f7) {
      if (eventId == 0xe39f0e2) {
        if (*(int *)((int)payload + 8) != iVar1) {
          return 1;
        }
        if (*(int *)((int)payload + 0xc) == iVar2) {
          FUN_00aa0770((int)this);
          return 1;
        }
        return 1;
      }
      if (eventId != 0xe39f0e3) {
        return 0;
      }
      if (*(int *)((int)payload + 8) != iVar1) {
        return 1;
      }
      if (*(int *)((int)payload + 0xc) == iVar2) {
        FUN_00aa07a0((int)this);
        return 1;
      }
      return 1;
    }
  }
/* 00AA45EA: Compare payload+8/+C to attached record+10/+14. Mismatch returns handled AL1 without apply/queue. The core-lot to attached-renderer pair producer is not established by these offsets. */
LAB_00aa45ea:
  if (*(int *)((int)payload + 8) != iVar1) {
    return 1;
  }
  if (*(int *)((int)payload + 0xc) != iVar2) {
    return 1;
  }
/* 00AA4600: Counter+80 zero invokesAA3890; nonzero constructs/queues an8-byte retained record. This receiver-local queue is separate from the shared dispatcher queue; reaching this branch alone does not prove that the outer queue was pumped or its installed dispatch path completed. */
LAB_00aa4600:
  if (*(int *)((int)this + 0x80) == 0) {
    FloorRenderEvents_ApplyEvent(this,eventId,payload);
  }
  else {
    InitializeRetainedMessageRecord(&local_8,eventId,payload);
    AppendRetainedMessageRecord((void *)((int)this + 0x84),&local_8);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 8))();
      return 1;
    }
  }
  return 1;
}
