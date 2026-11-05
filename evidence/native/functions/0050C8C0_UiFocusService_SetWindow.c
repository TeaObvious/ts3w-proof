/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  void *this_00;
  int *piVar5;
  int *piVar6;
  int aiStack_1c [6];
  int *piStack_4;
  
  if (windowInterface == (void *)0x0) {
    this_00 = (void *)0x0;
  }
  else {
    this_00 = (void *)((int)windowInterface + -4);
  }
  piVar1 = (int *)(inputContext * 0x2c + 0x6b0 + (int)this);
  if ((this_00 != (void *)0x0) &&
     ((uVar3 = (**(code **)(*(int *)((int)this_00 + 4) + 0x28))(), (uVar3 & 1) == 0 ||
      ((((uVar3 & 2) == 0 && (inputContext != 1)) ||
       (bVar2 = FUN_00513bc0(this_00,inputContext == 1), !bVar2)))))) {
    return false;
  }
  if ((piVar1[2] != 0) && (((char)piVar1[3] == '\0' || (inputContext != 1)))) {
    piVar1[1] = (int)this_00;
    return true;
  }
  if (this_00 != (void *)*piVar1) {
    if (piVar1[6] != 0) {
      piVar5 = piVar1 + 4;
      piVar6 = aiStack_1c;
      for (iVar4 = 7; iVar4 != 0; iVar4 = iVar4 + -1) {
        *piVar6 = *piVar5;
        piVar5 = piVar5 + 1;
        piVar6 = piVar6 + 1;
      }
      piVar1[6] = 0;
      FUN_0050c250(this,aiStack_1c,'\0');
    }
    aiStack_1c[3] = inputContext;
    if (this_00 == (void *)0x0) {
      piStack_4 = (int *)0x0;
    }
    else {
      piStack_4 = (int *)((int)this_00 + 4);
    }
    piVar5 = (int *)*piVar1;
    *piVar1 = (int)this_00;
    piVar1[1] = (int)this_00;
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
      piVar6 = piVar5 + 1;
      aiStack_1c[2] = 10;
      FUN_0050c110(this,0,(int)piVar6,aiStack_1c,'\0','\0');
      if (piVar5[0xc] != 0) {
        aiStack_1c[2] = 0x1b;
        piStack_4 = piVar6;
        FUN_0050c110(this,(int)piVar6,(int)piVar6,aiStack_1c,'\x01','\0');
      }
      (**(code **)(*piVar5 + 4))();
      if ((void *)*piVar1 != this_00) {
        return true;
      }
    }
    *piVar1 = (int)this_00;
    piVar1[1] = (int)this_00;
    FUN_0050b0f0((int)this);
    if (this_00 != (void *)0x0) {
      iVar4 = (int)this_00 + 4;
      aiStack_1c[2] = 10;
      piStack_4 = (int *)iVar4;
      FUN_0050c110(this,0,iVar4,aiStack_1c,'\0','\0');
      aiStack_1c[2] = 0x1a;
      FUN_0050c110(this,iVar4,iVar4,aiStack_1c,'\x01','\0');
    }
  }
  return true;
}

