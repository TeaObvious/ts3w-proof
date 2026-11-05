/* Analyst note (PC1.67 construction topology/projection counterpart): ECX receiver plus UInt32
   event ID and payload pointer, RET8; void. Existing special event or attached-lot state admission
   precedes dispatch. Route per-level floor add/remove/update and style/visibility events to
   existing children. Height event114765F7 reads signed-byte X/Z/level (MOVSX), updates retained
   per-level structures and levels, including special -1/0 paths, then calls optional dependent lot
   services +234,+248,+238,+258. C55EA0 receives location while A6C2B0/A812C0 also receive scalar
   height as actual arguments. Preserve conditional order and null guards. Full
   arithmetic/format/lifetime of child geometry services and scalar constants remain with their own
   original bodies; this selected consumer does not implement current Gather/Slice channel arrays or
   demonstrate their native equivalence. */

void __thiscall FloorRenderEvents_ApplyEvent(void *this,uint eventId,void *payload)

{
  ushort *puVar1;
  char *pcVar2;
  char cVar3;
  int iVar4;
  int *piVar5;
  void *pvVar6;
  bool bVar7;
  int iVar8;
  void *pvVar9;
  void *this_00;
  int *piVar10;
  int *piVar11;
  int iVar12;
  uint uVar13;

  /* 00AA38A3: Event0431BFC9 still needs attached byte+1E or ADF640 admission here, after AA4350 already matched its owner pair. Receiver acceptance is not proof this downstream apply occurs. */
  if (((eventId == 0x3fe8ba9) || (*(char *)(*(int *)((int)this + 8) + 0x1e) != '\0')) ||
     (bVar7 = FUN_00adf640(*(int *)((int)this + 8)), bVar7)) {
    pvVar6 = payload;
    pvVar9 = DAT_011ede58;
    if (eventId < 0x92c9a97) {
      if (eventId == 0x92c9a96) {
        iVar4 = *(int *)((int)payload + 0x44);
        iVar12 = *(int *)((int)payload + 0x40);
        uVar13 = 0;
        if (iVar4 != iVar12) {
          do {
            pvVar9 = (void *)FUN_00aa0aa0(this,(int)*(char *)(*(int *)((int)pvVar6 + 0x40) + uVar13)
                                          ,'\x01');
            if (pvVar9 != (void *)0x0) {
              FUN_00a9cde0(pvVar9,(int *)((int)pvVar6 + 0x10));
            }
            uVar13 = uVar13 + 1;
          } while (uVar13 < (uint)(iVar4 - iVar12));
          return;
        }
      }
      else if (eventId < 0x5c2804a) {
        if (eventId == 0x5c28049) {
          pvVar9 = (void *)0x0;
          payload = (void *)(*(int *)((int)payload + 0x18) - *(int *)((int)payload + 0x14) >> 2);
          if (payload != (void *)0x0) {
            do {
              iVar4 = *(int *)((int)pvVar6 + 0x14);
              this_00 = (void *)FUN_00aa0aa0(this,(int)*(char *)(iVar4 + 2 + (int)pvVar9 * 4),
                                             (byte)~*(byte *)(iVar4 + 3 + (int)pvVar9 * 4) >> 4 & 1)
              ;
              if (this_00 != (void *)0x0) {
                FUN_00a9f150(this_00,(char *)(iVar4 + (int)pvVar9 * 4),
                             (byte *)(*(int *)((int)pvVar6 + 0x24) + (int)pvVar9),
                             *(byte *)((int)pvVar6 + 0x10));
              }
              pvVar9 = (void *)((int)pvVar9 + 1);
            } while (pvVar9 < payload);
            return;
          }
        }
        else if (eventId == 0x3fe8ba9) {
          pvVar9 = (void *)FUN_00aa0aa0(this,*(int *)((int)payload + 0x10),'\x01');
          if (pvVar9 != (void *)0x0) {
            FUN_00a9c3b0(pvVar9,(int)pvVar6 + 0x1c,*(short *)((int)pvVar6 + 0x14));
            return;
          }
        }
        else if (eventId == 0x41f88ac) {
          iVar4 = *(int *)(*(int *)((int)this + 8) + 0x70);
          iVar12 = 0;
          if (0 < iVar4) {
            do {
              iVar8 = FUN_00aa0aa0(this,*(int *)(*(int *)((int)this + 8) + 0x68) + iVar12,'\x01');
              FUN_00a9b5f0(iVar8);
              iVar8 = FUN_00aa0aa0(this,*(int *)(*(int *)((int)this + 8) + 0x68) + iVar12,'\0');
              if (iVar8 != 0) {
                FUN_00a9b5f0(iVar8);
              }
              iVar12 = iVar12 + 1;
            } while (iVar12 < iVar4);
            return;
          }
        }
        else if (eventId == 0x431bfc9) {
          puVar1 = (ushort *)((int)payload + 0x10);
          /* 00AA390F: For event0431BFC9 first invoke AA36A0(cell,payload+5E) for conditional room-ID update, then forward the same cell and input fields to AA1F70. A913D0 supplies a single-quarter mask; this consumer does not enforce one. */
          UpdateFloorQuarterRoomIds(this,(char *)puVar1,*(short *)((int)payload + 0x5e));
          /* 00AA391B: Load optional message+78 through x87 before callingAA1F70. A8B070/A913D0 do not establish initialization of+70..83 when the optional source is absent; no zero-default or harmless-read claim follows. */
          /* 00AA3970: AA1F70 receives17 physical stack words (RET44h), including support byte+5B. Existing complete child routing separates nonnull pattern inputs from support-dependent null-quad behavior. */
          ApplyFloorQuarterInputs
                    (this,puVar1,(int *)((int)pvVar6 + 0x18),*(undefined2 *)((int)pvVar6 + 0x58),
                     *(ushort *)((int)pvVar6 + 0x5e),*(undefined1 *)((int)pvVar6 + 0x86),
                     (byte *)((int)pvVar6 + 0x5a),*(byte *)((int)pvVar6 + 0x5b),
                     (int *)((int)pvVar6 + 0x60),(undefined4 *)((int)pvVar6 + 0x70),
                     *(undefined4 *)((int)pvVar6 + 0x78),(undefined4 *)((int)pvVar6 + 0x7c),
                     (uint)*(byte *)((int)pvVar6 + 0x5c),(uint)*(byte *)((int)pvVar6 + 0x84),
                     (uint)*(byte *)((int)pvVar6 + 0x85),(uint)*(byte *)((int)pvVar6 + 0x87),
                     (uint)*(byte *)((int)pvVar6 + 0x88),0);
          return;
        }
      }
      else if (eventId == 0x5ff543b) {
        pvVar9 = *(void **)(*(int *)((int)this + 8) + 0x234);
        if (pvVar9 != (void *)0x0) {
          FUN_00afa180(pvVar9,(int)payload);
          return;
        }
      }
      else if (eventId == 0x91a65f9) {
        iVar4 = *(int *)((int)payload + 0x18);
        iVar12 = *(int *)((int)payload + 0x14);
        uVar13 = 0;
        if (iVar4 != iVar12) {
          do {
            pvVar9 = (void *)FUN_00aa0aa0(this,(int)*(char *)(*(int *)((int)pvVar6 + 0x14) + uVar13)
                                          ,'\x01');
            if (pvVar9 != (void *)0x0) {
              FUN_00a9c2b0(pvVar9,*(char *)((int)pvVar6 + 0x10));
            }
            uVar13 = uVar13 + 1;
          } while (uVar13 < (uint)(iVar4 - iVar12));
          return;
        }
      }
    }
    else if (eventId < 0xa69558d) {
      if (eventId == 0xa69558c) {
        if ((((*(char *)((int)this + 0x74) != *(char *)((int)payload + 0x10)) &&
             (bVar7 = DAT_011ede58 != (void *)0x0,
             *(char *)((int)this + 0x74) = *(char *)((int)payload + 0x10), bVar7)) &&
            (uVar13 = FUN_00c7cb90(pvVar9,*(uint *)(*(int *)((int)this + 8) + 0x10),
                                   *(int *)(*(int *)((int)this + 8) + 0x14)), (char)uVar13 != '\0'))
           && (*(char *)(*(int *)((int)this + 8) + 0x1e) != '\0')) {
          FUN_00aa11a0((int)this);
          return;
        }
      }
      else {
        if (eventId == 0x934a19e) {
LAB_00aa3c97:
          ApplyFloorQuarterInputs
                    (this,(ushort *)((int)payload + 0x10),(int *)((int)payload + 0x18),
                     *(undefined2 *)((int)payload + 0x58),*(ushort *)((int)payload + 0x5e),
                     *(undefined1 *)((int)payload + 0x86),(byte *)((int)payload + 0x5a),
                     *(byte *)((int)payload + 0x5b),(int *)((int)payload + 0x60),
                     (undefined4 *)((int)payload + 0x70),*(undefined4 *)((int)payload + 0x78),
                     (undefined4 *)((int)payload + 0x7c),(uint)*(byte *)((int)payload + 0x5c),
                     (uint)*(byte *)((int)payload + 0x84),(uint)*(byte *)((int)payload + 0x85),
                     (uint)*(byte *)((int)payload + 0x87),(uint)*(byte *)((int)payload + 0x88),0);
          return;
        }
        if (eventId == 0x97ac12e) {
          FUN_00581900(&payload,payload);
          piVar10 = payload;
          FUN_00aa28d0(this,(undefined4 *)((int)payload + 0x10));
          piVar5 = *(int **)((int)piVar10 + 0x28);
          for (piVar11 = *(int **)((int)piVar10 + 0x24); piVar11 != piVar5; piVar11 = piVar11 + 1) {
            iVar4 = *piVar11;
            if (iVar4 != 0) {
              UpdateFloorQuarterRoomIds(this,(char *)(iVar4 + 0x10),*(short *)(iVar4 + 0x5e));
              ApplyFloorQuarterInputs
                        (this,(ushort *)(iVar4 + 0x10),(int *)(iVar4 + 0x18),
                         *(undefined2 *)(iVar4 + 0x58),*(ushort *)(iVar4 + 0x5e),
                         *(undefined1 *)(iVar4 + 0x86),(byte *)(iVar4 + 0x5a),
                         *(byte *)(iVar4 + 0x5b),(int *)(iVar4 + 0x60),(undefined4 *)(iVar4 + 0x70),
                         *(undefined4 *)(iVar4 + 0x78),(undefined4 *)(iVar4 + 0x7c),0,
                         (uint)*(byte *)(iVar4 + 0x84),(uint)*(byte *)(iVar4 + 0x85),
                         (uint)*(byte *)(iVar4 + 0x87),(uint)*(byte *)(iVar4 + 0x88),0);
              piVar10 = payload;
            }
          }
          (**(code **)(*piVar10 + 8))();
          return;
        }
      }
    }
    else if (eventId == 0x114765f7) {
      pcVar2 = (char *)((int)payload + 0x14);
      if ((*(char *)((int)payload + 0x14) <= *(char *)((int)this + 0x14)) &&
         (*(char *)((int)payload + 0x15) <= *(char *)((int)this + 0x18))) {
        if (*(void **)((int)this + 0x78) != (void *)0x0) {
          FUN_00a8b330(*(void **)((int)this + 0x78),(undefined4 *)((int)payload + 0x10),
                       (int)*(char *)((int)payload + 0x14),(int)*(char *)((int)payload + 0x15),
                       (int)*(char *)((int)payload + 0x16) - *(int *)((int)this + 0xc));
        }
        pvVar9 = (void *)FUN_00aa0aa0(this,(int)*(char *)((int)pvVar6 + 0x16),'\x01');
        if (pvVar9 != (void *)0x0) {
          FUN_00a9b2b0(pvVar9,*pcVar2,*(undefined1 *)((int)pvVar6 + 0x15),
                       *(float *)((int)pvVar6 + 0x10));
        }
        cVar3 = *(char *)((int)pvVar6 + 0x16);
        pvVar9 = (void *)FUN_00aa0aa0(this,(int)cVar3,'\0');
        if (pvVar9 != (void *)0x0) {
          if (cVar3 != '\0') {
            FUN_00a9b2b0(pvVar9,*pcVar2,*(undefined1 *)((int)pvVar6 + 0x15),
                         *(float *)((int)pvVar6 + 0x10));
          }
          if ((*(char *)((int)pvVar6 + 0x16) == -1) &&
             (pvVar9 = (void *)FUN_00aa0aa0(this,0,'\0'), pvVar9 != (void *)0x0)) {
            FUN_00a9b2b0(pvVar9,*pcVar2,*(undefined1 *)((int)pvVar6 + 0x15),
                         (*(float *)((int)pvVar6 + 0x10) + 3.0) - 0.15);
          }
        }
        if ((*(char *)((int)pvVar6 + 0x16) == '\0') &&
           (pvVar9 = *(void **)(*(int *)((int)this + 8) + 0x234), pvVar9 != (void *)0x0)) {
          FUN_00afa2f0(pvVar9,(int)*pcVar2,(int)*(char *)((int)pvVar6 + 0x15),
                       *(undefined4 *)((int)pvVar6 + 0x10));
        }
        pvVar9 = *(void **)(*(int *)((int)this + 8) + 0x248);
        if (pvVar9 != (void *)0x0) {
          FUN_00a6c2b0(pvVar9,pcVar2);
        }
        pvVar9 = *(void **)(*(int *)((int)this + 8) + 0x238);
        if (pvVar9 != (void *)0x0) {
          FUN_00c55ea0(pvVar9,pcVar2);
        }
        pvVar9 = *(void **)(*(int *)((int)this + 8) + 600);
        if (pvVar9 != (void *)0x0) {
          FUN_00a812c0(pvVar9,(undefined2 *)pcVar2);
        }
      }
    }
    else if (eventId == 0x3175ae42) goto LAB_00aa3c97;
  }
  return;
}
