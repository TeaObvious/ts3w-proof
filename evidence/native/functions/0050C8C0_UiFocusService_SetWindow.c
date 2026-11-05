/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static. Focus service virtual58: physical ECX service, first stack
   context and second IWindow interface; nonnull subtract4 gives complete window. RET8, only AL is
   boolean, upper bits unspecified. Native admission calls IWindow28 flags: visible bit1 required;
   enabled bit2 required except context1, then complete-window ancestor admission513BC0(context==1).
   Context row is service+6B0+context*2C. Existing capture/pending state row+8/+C may publish
   pending target+4 without switching current. Before actual transfer it drains a stored event when
   row+18 nonzero, publishes current and pending, acquires old reference, sends event10 and
   conditionally Lost27 through50C110, releases old, then rereads current against requested target
   to honor reentrant change. On unchanged request it republishes, calls50B0F0 and sends event10
   then Acquire26 for nonnull new target. No match to the current CLR snapshot-chain algorithm is
   claimed. See full ASM for all branches and event payload fields; direct routing helpers remain
   separate actual callees. */

bool __thiscall UiFocusService_SetWindow(void *this,uint inputContext,void *windowInterface)

{
  int *piVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  void *pvVar5;
  int *piVar6;
  int *piVar7;
  int aiStack_1c [6];
  int *piStack_4;
  
  if (windowInterface == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = (void *)((int)windowInterface + -4);
  }
  piVar1 = (int *)(inputContext * 0x2c + 0x6b0 + (int)this);
  if ((pvVar5 != (void *)0x0) &&
     ((uVar3 = (**(code **)(*(int *)((int)pvVar5 + 4) + 0x28))(), (uVar3 & 1) == 0 ||
      ((((uVar3 & 2) == 0 && (inputContext != 1)) ||
       (bVar2 = FUN_00513bc0(pvVar5,inputContext == 1), !bVar2)))))) {
    return false;
  }
  if ((piVar1[2] != 0) && (((char)piVar1[3] == '\0' || (inputContext != 1)))) {
    piVar1[1] = (int)pvVar5;
    return true;
  }
  if (pvVar5 != (void *)*piVar1) {
    if (piVar1[6] != 0) {
      piVar6 = piVar1 + 4;
      piVar7 = aiStack_1c;
      for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
        *piVar7 = *piVar6;
        piVar6 = piVar6 + 1;
        piVar7 = piVar7 + 1;
      }
      piVar1[6] = 0;
      FUN_0050c250(this,aiStack_1c,'\0');
    }
    aiStack_1c[3] = inputContext;
    if (pvVar5 == (void *)0x0) {
      piStack_4 = (int *)0x0;
    }
    else {
      piStack_4 = (int *)((int)pvVar5 + 4);
    }
    piVar6 = (int *)*piVar1;
    *piVar1 = (int)pvVar5;
    piVar1[1] = (int)pvVar5;
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
      piVar7 = piVar6 + 1;
      aiStack_1c[2] = 10;
      UiWindowService_DispatchEvent(this,(void *)0x0,piVar7,aiStack_1c,0,0);
      if (piVar6[0xc] != 0) {
        aiStack_1c[2] = 0x1b;
        piStack_4 = piVar7;
        UiWindowService_DispatchEvent(this,piVar7,piVar7,aiStack_1c,1,0);
      }
      (**(code **)(*piVar6 + 4))();
      if ((void *)*piVar1 != pvVar5) {
        return true;
      }
    }
    *piVar1 = (int)pvVar5;
    piVar1[1] = (int)pvVar5;
    FUN_0050b0f0((int)this);
    if (pvVar5 != (void *)0x0) {
      pvVar5 = (void *)((int)pvVar5 + 4);
      aiStack_1c[2] = 10;
      piStack_4 = pvVar5;
      UiWindowService_DispatchEvent(this,(void *)0x0,pvVar5,aiStack_1c,0,0);
      aiStack_1c[2] = 0x1a;
      UiWindowService_DispatchEvent(this,pvVar5,pvVar5,aiStack_1c,1,0);
    }
  }
  return true;
}

