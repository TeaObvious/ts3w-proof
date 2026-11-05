/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original combo-control comparison; no execution. ECX control subobject plus two
   stack words; RET8. Clears open state before selected grid/modal/focus teardown, resets selected
   sentinels, unhooks/clears callback state and sends event4F5527E9 Arg2=0 with
   command-ID/control-ID fallback. Child selection, focus and destruction effects are bounded;
   current owner close does not reproduce the full native modal grid lifetime. */

void __thiscall WinComboBox_EndModalList(void *this,int *param_1,int param_2)

{
  int *piVar1;
  code *pcVar2;
  char cVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iStack_24;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  int iStack_10;
  undefined4 uStack_c;
  
  if (*(char *)((int)this + 0x3d) != '\0') {
    *(undefined1 *)((int)this + 0x3d) = 0;
    if (param_1 != (int *)0x0) {
      piVar4 = (int *)(**(code **)(*param_1 + 0xc))(0xaf1ee902);
      if (piVar4 != (int *)0x0) {
        if (*(int *)((int)this + 0xb0) != 0) {
          (**(code **)(**(int **)((int)this + 0xac) + 0x10c))(*(int *)((int)this + 0xb0));
          piVar1 = *(int **)((int)this + 0xb0);
          if (piVar1 != (int *)0x0) {
            *(undefined4 *)((int)this + 0xb0) = 0;
            (**(code **)(*piVar1 + 4))();
          }
        }
        if ((*(byte *)((int)this + 0x34) & 4) != 0) {
          (**(code **)(**(int **)((int)this + -0x224) + 0x68))
                    (1,*(undefined4 *)((int)this + 0xac),1);
        }
        cVar3 = (**(code **)(*piVar4 + 0xd8))(auStack_20,&iStack_24);
        if (cVar3 != '\0') {
          if (iStack_24 == *(int *)((int)this + 0xc)) {
            (**(code **)(*(int *)((int)this + -0x254) + 0xb4))(*(int *)((int)this + 0xc));
          }
          else {
            (**(code **)(*(int *)((int)this + -4) + 0x44))(iStack_24,1);
          }
        }
        if (param_2 == 0) {
          if (this == (void *)0x254) {
            iVar6 = 0;
          }
          else {
            iVar6 = (int)this + -0x250;
          }
          iVar5 = (**(code **)(**(int **)((int)this + -0x224) + 0x60))(1);
          if (iVar5 != iVar6) {
            if (this == (void *)0x254) {
              iVar6 = 0;
            }
            else {
              iVar6 = (int)this + -0x250;
            }
            (**(code **)(**(int **)((int)this + -0x224) + 100))(1,iVar6,0);
          }
        }
      }
      if (*(int *)((int)this + 0x54) != 0) {
        param_1 = (int *)(**(code **)(*param_1 + 0x10))();
      }
      if ((param_1 != (int *)0x0) && (iVar6 = (**(code **)(*param_1 + 0x10))(), iVar6 != 0)) {
        piVar4 = (int *)(**(code **)(*param_1 + 0x10))();
        (**(code **)(*piVar4 + 0xe4))(param_1);
      }
    }
    *(undefined4 *)((int)this + 8) = 0xffffffff;
    *(undefined4 *)((int)this + 4) = 0xffffffff;
    pcVar2 = *(code **)(*(int *)((int)this + -0x250) + 0x90);
    *(undefined4 *)((int)this + 0xac) = 0;
    (*pcVar2)();
    iStack_10 = *(int *)((int)this + -0x218);
    uStack_14 = 0x4f5527e9;
    if (iStack_10 == 0) {
      iStack_10 = *(int *)((int)this + -0x21c);
    }
    uStack_c = 0;
    (**(code **)(*(int *)((int)this + -0x250) + 0x118))(auStack_1c);
  }
  return;
}

