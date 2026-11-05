/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. Receiver is lot's message subobject;
   subtract0xA0 to recover lot base. For04A06E68 validates full two-word lot GUID then reads locator
   atmessage+10, endpoint bytes+16/+17 and calls00AC2890. For04ADF667 validates same GUID, forwards
   signed intlevel+10 and visibilitybyte+14 to00AC5940. Returns meaningful bool in AL only; other
   message branches retained but outside wall review. */

bool __thiscall LotMessageHandler_Dispatch(void *this,uint messageId,char *message)

{
  void *this_00;
  char cVar1;
  char *pcVar2;
  int *message_00;
  char *location;
  
  if (messageId < 0x5e77e1e) {
    if (messageId == 0x5e77e1d) {
      if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
         (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
        FUN_00abc660((void *)((int)this + -0xa0));
        return true;
      }
    }
    else if (messageId < 0x4e119bc) {
      if (messageId == 0x4e119bb) {
        if (*(char *)((int)this + 0x305) != '\0') {
          FUN_00aba9b0((void *)((int)this + -0xa0));
          return true;
        }
      }
      else if (messageId == 0x4a06e68) {
        if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
           (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
          Lot_UpdateObjectsAttachedToWall
                    ((void *)((int)this + -0xa0),message + 0x10,message[0x16],message[0x17]);
          return true;
        }
      }
      else if (messageId == 0x4adf667) {
        if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
           (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
          Lot_UpdateWallMountedObjectsAtLevel
                    ((void *)((int)this + -0xa0),*(int *)(message + 0x10),message[0x14]);
          return true;
        }
      }
      else {
        if (messageId != 0x4e11976) {
          return false;
        }
        if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
           (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
          FUN_00ab46b0((void *)((int)this + -0xa0));
          LotMainEntrance_UpdateDisplayEffects((void *)((int)this + -0xa0));
          return true;
        }
      }
    }
    else if (messageId == 0x5e77a0e) {
      if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
         (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
        FUN_00abbb60((void *)((int)this + -0xa0),message[0x10]);
        return true;
      }
    }
    else {
      if (messageId != 0x5e77c4f) {
        return false;
      }
      if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
         (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
        FUN_00ab7540((void *)((int)this + -0xa0),message[0x10]);
        return true;
      }
    }
  }
  else if (messageId < 0xe815460) {
    if (messageId == 0xe81545f) {
      if (*(int *)((int)this + 0x240) != 0) {
        Seasons_CollectLotPuddleCandidates(*(int *)((int)this + 0x240));
        return true;
      }
    }
    else {
      if (messageId != 0x9b6260d) {
        return false;
      }
      if ((((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
           (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) &&
          (cVar1 = message[0x10], *(char *)((int)this + 0x2c8) = cVar1, cVar1 != '\0')) &&
         (*(int *)((int)*(void **)((int)this + 0x23c) + 0xc) != 0)) {
        FUN_00aba7d0(*(void **)((int)this + 0x23c),*(void **)((int)this + 0x2c4),(int)this + -0xa0);
        return true;
      }
    }
  }
  else if (messageId == 0xa7ccebea) {
    if (*(int *)(message + 8) == (int)this + -0xa0) {
      this_00 = (void *)((int)this + -0xa0);
      FUN_00ab0fe0(this_00,message[0xc]);
      if (message[0xc] == '\0') {
        FUN_00ab94c0(this_00,*(void **)((int)this + 0x248));
      }
      else {
        FUN_00ab3260(*(void **)((int)this + 0x248),*(int *)((int)this + 0xe0));
      }
      message_00 = FloorMessagePool_AcquireStorage();
      if (message_00 == (int *)0x0) {
        message_00 = (int *)0x0;
      }
      else {
        *message_00 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        message_00[1] = 0;
        UNLOCK();
        *message_00 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        (**(code **)(*message_00 + 4))();
      }
      message_00[2] = *(int *)((int)this + -0x58);
      message_00[3] = *(int *)((int)this + -0x54);
      Lot_SendManagerMessage(this_00,0xaa5dee4,message_00);
      (**(code **)(*message_00 + 8))();
    }
  }
  else if (messageId == 0xb5af4d60) {
    if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
       (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
      if ((*(int *)((int)this + 0x2fc) < 0) && (message[0x10] == '\0')) {
        Lot_SetDisplayLevel((void *)((int)this + -0xa0),0,true,true,false);
      }
      *(char *)((int)this + 0x22) = message[0x10];
      FUN_00ab94c0((void *)((int)this + -0xa0),*(void **)((int)this + 0x248));
      return true;
    }
  }
  else {
    if (messageId != 0xb77d1d39) {
      return false;
    }
    if ((*(int *)(message + 8) == *(int *)((int)this + -0x58)) &&
       (*(int *)(message + 0xc) == *(int *)((int)this + -0x54))) {
      location = *(char **)(message + 0x10);
      pcVar2 = *(char **)(message + 0x14);
      if (location != pcVar2) {
        do {
          LotFloorFeatures_SetTile((void *)((int)this + -0xa0),location,8,0,0xffff);
          location = location + 3;
        } while (location != pcVar2);
        return true;
      }
    }
  }
  return true;
}

