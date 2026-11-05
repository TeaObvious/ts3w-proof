/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified original PC1.67 TS3W.exe physical body; Presentation vtable0101F78C reaches this
   complete two-event receiver. ECX opaque receiver plus eventId/payload two stack DWORDs, RET8 and
   AL status. Event07983246 accepts raw32 width/height/refresh, replaces FFFFFFFF from current
   renderer values, windowed forces refresh0, calls existing7F1DD0 and tests AL. Separate76CBB23D
   branch retains existing presentation/window policy and ten-lane77D580 notification. Concrete
   renderer/platform/marshaller children remain external. No guessed class structure or changed
   native behavior. */

bool __thiscall
UiPresentation_HandleDisplayModeMessages(undefined *receiver,uint messageId,undefined *payload)

{
  char cVar1;
  float fVar2;
  float fVar3;
  uint uVar4;
  void *pvVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  HWND pHVar9;
  int *piVar10;
  int iVar11;
  int unaff_EBP;
  bool bVar12;
  LPRECT lpRect;
  int Y;
  undefined *nHeight;
  BOOL bRepaint;
  undefined *puStack_30;
  int iStack_2c;
  int iStack_28;
  tagRECT tStack_24;
  uint uStack_10;
  int iStack_c;
  undefined *puStack_8;
  
  puStack_30 = receiver;
  if (messageId == 0x7983246) {
    pvVar5 = (void *)Graphics_GetManagerSingleton();
    Renderer_GetLogicalDimensions(pvVar5,&messageId,&iStack_2c,&puStack_30);
    cVar1 = payload[0x14];
    uStack_10 = *(uint *)(payload + 8);
    if (*(uint *)(payload + 8) == 0xffffffff) {
      uStack_10 = messageId;
    }
    iStack_c = *(int *)(payload + 0xc);
    if (*(int *)(payload + 0xc) == -1) {
      iStack_c = iStack_2c;
    }
    puStack_8 = *(undefined **)(payload + 0x10);
    if (*(undefined **)(payload + 0x10) == (undefined *)0xffffffff) {
      puStack_8 = puStack_30;
    }
    payload = (undefined *)CONCAT31(payload._1_3_,cVar1);
    if (cVar1 == '\0') {
      puStack_8 = (undefined *)0x0;
    }
    uVar6 = FUN_007f1dd0(&uStack_10,cVar1);
    if ((char)uVar6 != '\0') {
      return true;
    }
  }
  else if (messageId == 0x76cbb23d) {
    pvVar5 = (void *)Graphics_GetManagerSingleton();
    bVar12 = *(char *)((int)pvVar5 + 0x24) == '\0';
    messageId = CONCAT31(messageId._1_3_,bVar12);
    Renderer_GetLogicalDimensions(pvVar5,&iStack_2c,&payload,&tStack_24.left);
    iVar7 = FUN_0058e800();
    uVar4 = messageId;
    piVar10 = DAT_011cebd0;
    iStack_28 = iVar7;
    if (DAT_011cebd0 != (int *)0x0) {
      (**(code **)(*DAT_011cebd0 + 0x5c))(messageId);
      if (iVar7 != 0) {
        FUN_0058e7a0((void *)(iVar7 + 4),(char)uVar4);
      }
      iVar8 = (**(code **)(*piVar10 + 0x98))();
      if (iVar8 == 0) {
        if (bVar12) {
          (**(code **)(*piVar10 + 0x44))(0x7fffffff,0x7fffffff,iStack_2c,payload);
        }
        else {
          SystemParametersInfoA(0x30,0,&uStack_10,0);
          bRepaint = 0;
          Y = 0x7fffffff;
          iVar8 = 0x7fffffff;
          iVar7 = iStack_2c;
          nHeight = payload;
          (**(code **)(*piVar10 + 0x44))();
          lpRect = (LPRECT)((int)register0x00000010 + -0x34);
          pHVar9 = (HWND)(**(code **)(*piVar10 + 0x9c))();
          GetWindowRect(pHVar9,lpRect);
          uStack_10 = tStack_24.right - tStack_24.left;
          if (iStack_2c - unaff_EBP <= (int)uStack_10) {
            tStack_24.left =
                 (((tStack_24.right - iStack_2c) - tStack_24.left) + unaff_EBP) / 2 + tStack_24.left
            ;
            uStack_10 = iStack_2c - unaff_EBP;
          }
          iVar11 = tStack_24.bottom - tStack_24.top;
          if (iStack_28 - (int)puStack_30 <= tStack_24.bottom - tStack_24.top) {
            tStack_24.top =
                 (int)(puStack_30 + ((tStack_24.bottom - iStack_28) - tStack_24.top)) / 2 +
                 tStack_24.top;
            iVar11 = iStack_28 - (int)puStack_30;
          }
          pHVar9 = (HWND)(**(code **)(*piVar10 + 0x9c))
                                   (tStack_24.left,tStack_24.top,uStack_10,iVar11,1);
          MoveWindow(pHVar9,iVar8,Y,iVar7,(int)nHeight,bRepaint);
          iVar7 = iStack_28;
        }
      }
      receiver = puStack_30;
    }
    if (iVar7 != 0) {
      messageId = CONCAT31(messageId._1_3_,*(undefined1 *)(iVar7 + 0xac));
      piVar10 = (int *)FUN_0050af90();
      if (piVar10 != (int *)0x0) {
        fVar2 = (float)*(int *)(iVar7 + 0xa0);
        if (*(int *)(iVar7 + 0xa0) < 0) {
          fVar2 = fVar2 + 4.2949673e+09;
        }
        fVar3 = (float)*(int *)(iVar7 + 0x9c);
        if (*(int *)(iVar7 + 0x9c) < 0) {
          fVar3 = fVar3 + 4.2949673e+09;
        }
        (**(code **)(*piVar10 + 0xc))(fVar3,fVar2);
      }
      iVar8 = FUN_00779660();
      if (iVar8 != 0) {
        FUN_0077d580(*(undefined4 *)(iVar7 + 0x8c),*(undefined4 *)(iVar7 + 0x90),
                     *(undefined4 *)(iVar7 + 0x94),(char)messageId,*(undefined4 *)(receiver + 8),
                     *(undefined4 *)(receiver + 0xc),*(undefined4 *)(receiver + 0x10),receiver[0x28]
                     ,*(undefined4 *)(iVar7 + 0x9c),*(undefined4 *)(iVar7 + 0xa0));
      }
    }
  }
  return false;
}

