/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name. capture(enableCapture,keepCurrentAnchor). True keepCurrentAnchor retains
   current logical mouse position and converts it to an integer warp anchor; false uses the
   client-area center and remembers the old position. Capture sets cursor policy 05AED300 for MMB,
   hides the pointer via input vtable +40; release clears the policy and shows the pointer. Original
   5998F1 tests the second argument; 599907 stores +61=!keepCurrentAnchor. MMB therefore does not
   restore a separate old position on release; center-mode release may restore it. Indirect-call ABI
   annotations establish ECX owner and stack arguments; local slot type reuse remains a decompiler
   artifact. */

void __thiscall
InputService_UpdateMouseCapture(void *this,char enableCapture,char keepCurrentAnchor)

{
  int *owner;
  int *piVar1;
  int *owner_00;
  void *this_00;
  int iVar2;
  undefined4 uVar3;
  float *pfVar4;
  HWND pHVar5;
  int *piVar6;
  bool bVar7;
  UINT Msg;
  WPARAM wParam;
  tagRECT *lpRect;
  LPARAM lParam;
  float fStack_40;
  float fStack_3c;
  int local_38;
  int local_34;
  LONG LStack_30;
  LONG LStack_2c;
  float local_28;
  float fStack_24;
  tagRECT tStack_20;
  RECT RStack_10;

  owner_00 = (int *)FUN_0050af90();
  if (((owner_00 != (int *)0x0) &&
      (this_00 = (void *)FUN_00505920(), owner = DAT_011cebd0, this_00 != (void *)0x0)) &&
     (DAT_011cebd0 != (int *)0x0)) {
    iVar2 = FUN_0060e910();
    uVar3 = FUN_0060ee50(iVar2);
    bVar7 = (char)uVar3 != '\0';
    if (enableCapture == '\0') {
      if ((*(char *)((int)this + 0x60) != '\0') &&
         (FUN_005059e0(this_00,0), *(char *)((int)this + 0x61) != '\0')) {
        InputService_LogicalToPixels
                  (&local_38,&local_34,*(float *)((int)this + 0x58),*(float *)((int)this + 0x5c));
        (**(code **)(*owner + 0x84))(owner,local_38,local_34);
        if (bVar7) {
          ClipCursor((RECT *)0x0);
        }
      }
    }
    else if (keepCurrentAnchor == '\0') {
      pfVar4 = (**(code **)(*owner_00 + 0x48))(owner_00,(float *)&local_38);
      local_28 = *pfVar4;
      fStack_24 = pfVar4[1];
      lpRect = &tStack_20;
      pHVar5 = (HWND)(**(code **)(*owner + 0x9c))();
      GetClientRect(pHVar5,lpRect);
      fStack_40 = (float)(tStack_20.right + tStack_20.left) * _DAT_00f9b5b4;
      fStack_3c = (float)(tStack_20.bottom + tStack_20.top) * _DAT_00f9b5b4;
      if (bVar7) {
        (**(code **)(*owner + 0x40))(owner,&local_38);
        RStack_10.top = local_34;
        RStack_10.left = local_38;
        RStack_10.right = LStack_30;
        RStack_10.bottom = LStack_2c;
        ClipCursor(&RStack_10);
      }
      iVar2 = FUN_00599180();
      piVar1 = DAT_011cebd0;
      if ((iVar2 != 0) && (DAT_011cebd0 != (int *)0x0)) {
        piVar6 = (int *)FUN_0050af90();
        if (piVar6 != (int *)0x0) {
          (**(code **)(*piVar6 + 0x94))(1);
        }
        lParam = 1;
        wParam = 0;
        Msg = 0x502;
        pHVar5 = (HWND)(**(code **)(*piVar1 + 0x9c))();
        PostMessageA(pHVar5,Msg,wParam,lParam);
      }
      InputService_LogicalToPixels(&local_38,&local_34,fStack_40,fStack_3c);
      (**(code **)(*owner + 0x84))(owner,local_38,local_34);
      FUN_005059e0(this_00,0x1001);
    }
    else {
      pfVar4 = (**(code **)(*owner_00 + 0x48))(owner_00,&local_28);
      fStack_40 = *pfVar4;
      fStack_3c = pfVar4[1];
      InputService_LogicalToPixels(&local_38,&local_34,fStack_40,fStack_3c);
      FUN_005059e0(this_00,0x5aed300);
    }
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0x18),(uint *)&DAT_00fda6dc);
    *(char *)((int)this + 0x60) = enableCapture;
    (**(code **)(*owner_00 + 0x40))(owner_00,enableCapture == '\0');
                    /* Original CMP [ESP+60],0 at5998F1 tests keepCurrentAnchor (second argument),
                       then SETE AL stores +61=!keepCurrentAnchor. This selects whether a later
                       release restores the old position. */
    *(bool *)((int)this + 0x61) = keepCurrentAnchor == '\0';
    *(float *)((int)this + 0x48) = fStack_40;
    *(float *)((int)this + 0x4c) = fStack_3c;
    *(int *)((int)this + 0x50) = local_38;
    *(int *)((int)this + 0x54) = local_34;
    *(float *)((int)this + 0x58) = local_28;
    *(float *)((int)this + 0x5c) = fStack_24;
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x18));
  }
  return;
}

