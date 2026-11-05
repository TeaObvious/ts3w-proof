/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager, one Boolean forced/reset input, RET4; AL
   success. Before device Reset,610C40 dispatches primary owner callback slot0 on list+E4;
   successful completion dispatches slot4 on the same owner list. Render-system registration6E01C0
   plus tableFF8DC8 joins these to6E1DE0(release full) and6E2E60(rebuild full). Resource-list
   callbacks at+D8 are distinct. Full owned body retained; no claim that all independent resource
   children or arbitrary plugins are exhaustively modeled. Decompiled presentation-pointer/list-end
   aliases are not literal reset-list semantics; original instructions retain separate sentinels
   atD4/E0. Callers consume AL only. */

undefined1 __thiscall Graphics_ResetDeviceAndNotifyOwners(void *this,char param_1)

{
  short sVar1;
  bool bVar2;
  char cVar3;
  DWORD DVar4;
  HWND hWnd;
  DWORD DVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  undefined4 *puVar9;
  int *piVar10;
  undefined4 *puVar11;
  undefined1 uVar12;
  DWORD local_604 [128];
  short asStack_404 [256];
  short asStack_204 [258];
  
  DVar4 = GetTickCount();
  *(DWORD *)(*(int *)((int)this + 0xe0) + 0x1c0) = DVar4;
  if ((param_1 == '\0') && (*(int *)(*(int *)((int)this + 0xe0) + 0x1a4) == 0)) {
    hWnd = GetForegroundWindow();
    if (hWnd == (HWND)0x0) {
      return 0;
    }
    GetWindowThreadProcessId(hWnd,local_604);
    DVar5 = GetCurrentProcessId();
    if (local_604[0] != DVar5) {
      return 0;
    }
  }
  iVar6 = (**(code **)(**(int **)((int)this + 0xc) + 0xc))(*(int **)((int)this + 0xc));
  if ((iVar6 < 0) && (iVar6 != -0x7789f797)) {
    return 0;
  }
  *(DWORD *)(*(int *)((int)this + 0xe0) + 0x1c4) = DVar4;
  if (*(char *)((int)this + 0x8d) == '\0') {
    *(undefined1 *)((int)this + 0x8d) = 1;
    Graphics_NotifyResetOwnersBeforeReset((int)this);
  }
  if (*(int *)((int)this + 0xd8) == 0) {
    piVar8 = (int *)0x0;
  }
  else {
    piVar8 = (int *)(*(int *)((int)this + 0xd8) + -4);
  }
  if (this == (void *)0xffffff28) {
    piVar10 = (int *)0x0;
  }
  else {
    piVar10 = (int *)((int)this + 0xd4);
  }
  while (piVar8 != piVar10) {
    (**(code **)(*piVar8 + 0x14))();
    if (piVar8[1] == 0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = (int *)(piVar8[1] + -4);
    }
  }
  FUN_00610f70((int)this);
  if (*(int *)(*(int *)((int)this + 0xe0) + 0x1a4) == 0) {
    iVar6 = 0;
    do {
      sVar1 = (short)iVar6 * 0x101;
      *(short *)((int)local_604 + iVar6 * 2) = sVar1;
      asStack_404[iVar6] = sVar1;
      asStack_204[iVar6] = sVar1;
      iVar6 = iVar6 + 1;
    } while (iVar6 < 0x100);
    (**(code **)(**(int **)((int)this + 0xc) + 0x54))(*(int **)((int)this + 0xc),0,0,local_604);
  }
  *(int *)((int)this + 0x44) = *(int *)((int)this + 0x44) + 1;
  if (*(int *)(*(int *)((int)this + 0xe0) + 0x16c) != 0) {
    *(undefined4 *)(*(int *)((int)this + 0xe0) + 0x17c) = 0;
  }
  piVar8 = (int *)(*(int *)((int)this + 0xe0) + 0x14c);
  iVar6 = (**(code **)(**(int **)((int)this + 0xc) + 0x40))();
  *(int *)(*(int *)((int)this + 0xe0) + 0x1c8) = iVar6;
  if (-1 < iVar6) {
    puVar9 = (undefined4 *)(*(int *)((int)this + 0xe0) + 0x14c);
    puVar11 = (undefined4 *)(*(int *)((int)this + 0xe0) + 0x184);
    for (iVar6 = 0xe; iVar6 != 0; iVar6 = iVar6 + -1) {
      *puVar11 = *puVar9;
      puVar9 = puVar9 + 1;
      puVar11 = puVar11 + 1;
    }
    uVar7 = FUN_0060fa70((int)this);
    if ((char)uVar7 != '\0') {
      FUN_00610a00((int)this);
      *(undefined1 *)((int)this + 0x8c) = 0;
      (**(code **)(**(int **)((int)this + 0xc) + 0xc0))
                (*(int **)((int)this + 0xc),*(int *)((int)this + 0xe0) + 4);
      RenderDevice_InvalidateAndApplyBaselineStates(this);
      iVar6 = 0;
      puVar9 = (undefined4 *)((int)this + 0x120);
      do {
        (**(code **)(**(int **)((int)this + 0xc) + 0x104))(*(int **)((int)this + 0xc),iVar6,0);
        *puVar9 = 0;
        iVar6 = iVar6 + 1;
        puVar9 = puVar9 + 1;
      } while (iVar6 < 0x10);
      *(undefined4 *)((int)this + 0x100) = 0;
      *(undefined4 *)((int)this + 0x104) = 0;
      *(undefined4 *)((int)this + 0x108) = 0;
      *(undefined4 *)((int)this + 0x10c) = 0;
      *(undefined4 *)((int)this + 0x110) = 0;
      *(undefined4 *)((int)this + 0x114) = 0;
      *(undefined4 *)((int)this + 0x118) = 0;
      iVar6 = 0;
      do {
        (**(code **)(**(int **)((int)this + 0xc) + 400))(*(int **)((int)this + 0xc),iVar6,0,0,0);
        iVar6 = iVar6 + 1;
      } while (iVar6 < 2);
      *(undefined4 *)((int)this + 0x11c) = 0;
      (**(code **)(**(int **)((int)this + 0xc) + 0x1a0))(*(int **)((int)this + 0xc),0);
      *(undefined4 *)((int)this + 0x54) = 0;
      uVar7 = 0x1000000;
      bVar2 = FUN_0060f990((int)this);
      if (!bVar2) {
        uVar7 = 0;
      }
      if (*(int *)((int)this + 0xd8) == 0) {
        piVar10 = (int *)0x0;
      }
      else {
        piVar10 = (int *)(*(int *)((int)this + 0xd8) + -4);
      }
      while (piVar10 != piVar8) {
        cVar3 = (**(code **)(*piVar10 + 0x10))();
        if (cVar3 == '\0') {
          uVar7 = 0;
        }
        if (piVar10[1] == 0) {
          piVar10 = (int *)0x0;
        }
        else {
          piVar10 = (int *)(piVar10[1] + -4);
        }
      }
      uVar12 = 0;
      if ((char)((uint)uVar7 >> 0x18) != '\0') {
        *(undefined1 *)((int)this + 0x8d) = 0;
        iVar6 = *(int *)((int)this + 0xe4);
        if (iVar6 == 0) {
          piVar8 = (int *)0x0;
        }
        else {
          piVar8 = (int *)(iVar6 + -4);
        }
        if ((int *)((int)this + 0xe4) == (int *)0x0) {
          piVar10 = (int *)0x0;
        }
        else {
          piVar10 = (int *)((int)this + 0xe0);
        }
        while (uVar12 = (undefined1)((uint)uVar7 >> 0x18), piVar8 != piVar10) {
          (**(code **)(*piVar8 + 4))();
          if (piVar8[1] == 0) {
            piVar8 = (int *)0x0;
          }
          else {
            piVar8 = (int *)(piVar8[1] + -4);
          }
        }
      }
      if (((*(char *)((int)this + 0x24) == '\0') && (*(char *)((int)this + 0x27) != '\0')) &&
         (*(int *)(*(int *)((int)this + 0xe0) + 0x1a4) == 0)) {
        (**(code **)(**(int **)((int)this + 0xc) + 0x54))
                  (*(int **)((int)this + 0xc),0,0,(int)this + 0xf58);
      }
      if (*(char *)((int)this + 0x8e) != '\0') {
        *(undefined1 *)((int)this + 0x8e) = 0;
        piVar8 = (int *)MessageDispatch_GetCurrent();
        if (piVar8 != (int *)0x0) {
          (**(code **)(*piVar8 + 0x1c))(0x76cbb23d,0,0,0);
        }
      }
      return uVar12;
    }
  }
  return 0;
}

