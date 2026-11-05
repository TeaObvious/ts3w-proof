/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete native detach service: ECX service, one complete
   WindowBase pointer/RET4. Build message17, convert complete window to IWindow+4 and pass it as
   BOTH source and receiver to50C110 with two routing flags0. The dispatcher supplies both event
   source/destination as this child interface. Only after callback read intrusive children sentinel
   complete+210 and recursively detach each complete child (node-8). No512 depth cap, CLR visited
   set or grid alias union. Afterwards perform actual ten-context capture/focus repair,
   observer/list removal and service-attached bookkeeping; selected full body establishes more than
   a callback emitter. Child-list/parent cleanup operates on actual objects and live service state,
   not copied value snapshots. Null input is not a generally safe native no-op: later code
   dereferences it. Actual C splits the seven-DWORD stack message into local_1c[8] plus adjacent
   locals; this is a decompiler stack-recovery artifact, not an eight-byte payload contract. The
   dispatcher copies seven original DWORDs; only proven producer stores define their contents. */

void __thiscall UiWindowService_DetachSubtree(void *this,void *windowComplete)

{
  char cVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 *puVar4;
  void *sourceInterface;
  int *piVar5;
  int iVar6;
  undefined1 local_1c [8];
  undefined4 local_14;
  
  local_14 = 0x11;
  if (windowComplete == (void *)0x0) {
    sourceInterface = (void *)0x0;
  }
  else {
    sourceInterface = (void *)((int)windowComplete + 4);
  }
  UiWindowService_DispatchEvent(this,sourceInterface,sourceInterface,local_1c,0,0);
  for (puVar4 = *(undefined4 **)((int)windowComplete + 0x210);
      puVar4 != (undefined4 *)((int)windowComplete + 0x210); puVar4 = (undefined4 *)*puVar4) {
    if (puVar4 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = puVar4 + -2;
    }
    UiWindowService_DetachSubtree(this,puVar2);
  }
  iVar6 = 0;
  piVar5 = (int *)((int)this + 0x6b4);
  do {
    if ((void *)piVar5[1] == windowComplete) {
      (**(code **)(*(int *)this + 0x68))(iVar6,(int)windowComplete + 4,0);
    }
    if ((void *)*piVar5 == windowComplete) {
      if (*(int *)((int)windowComplete + 0x2c) == 0) {
        iVar3 = 0;
      }
      else {
        iVar3 = *(int *)((int)windowComplete + 0x2c) + 4;
      }
      cVar1 = (**(code **)(*(int *)this + 0x58))(iVar6,iVar3);
      if (cVar1 == '\0') {
        iVar3 = FUN_00513c00(*(void **)((int)windowComplete + 0x2c),'\0');
        if (iVar3 == 0) {
          iVar3 = 0;
        }
        else {
          iVar3 = iVar3 + 4;
        }
        (**(code **)(*(int *)this + 0x58))(iVar6,iVar3);
      }
    }
    if ((void *)piVar5[-1] == windowComplete) {
      if (*(int *)((int)windowComplete + 0x2c) == 0) {
        iVar3 = 0;
      }
      else {
        iVar3 = *(int *)((int)windowComplete + 0x2c) + 4;
      }
      cVar1 = (**(code **)(*(int *)this + 0x58))(iVar6,iVar3);
      if (cVar1 == '\0') {
        iVar3 = FUN_00513c00(*(void **)((int)windowComplete + 0x2c),'\0');
        if (iVar3 == 0) {
          iVar3 = 0;
        }
        else {
          iVar3 = iVar3 + 4;
        }
        (**(code **)(*(int *)this + 0x58))(iVar6,iVar3);
      }
    }
    iVar6 = iVar6 + 1;
    piVar5 = piVar5 + 0xb;
  } while (iVar6 < 10);
  FUN_004e1c00((void *)((int)this + 0x678),(uint *)&DAT_00fbb624);
  puVar4 = *(undefined4 **)((int)this + 0xe8);
  while (puVar4 != (undefined4 *)((int)this + 0xe8)) {
    if ((puVar4[2] == (int)windowComplete + 4) || (puVar4[3] == (int)windowComplete + 4)) {
      puVar4 = (undefined4 *)*puVar4;
      piVar5 = (int *)puVar4[1];
      *(int *)piVar5[1] = *piVar5;
      *(int *)(*piVar5 + 4) = piVar5[1];
      Memory_FreeIfNonNull(piVar5);
    }
    else {
      puVar4 = (undefined4 *)*puVar4;
    }
  }
  puVar4 = *(undefined4 **)((int)this + 0xf4);
  if (puVar4 != (undefined4 *)((int)this + 0xf4)) {
    do {
      if ((puVar4[2] == (int)windowComplete + 4) || (puVar4[3] == (int)windowComplete + 4)) {
        puVar4 = (undefined4 *)*puVar4;
        piVar5 = (int *)puVar4[1];
        *(int *)piVar5[1] = *piVar5;
        *(int *)(*piVar5 + 4) = piVar5[1];
        Memory_FreeIfNonNull(piVar5);
      }
      else {
        puVar4 = (undefined4 *)*puVar4;
      }
    } while (puVar4 != (undefined4 *)((int)this + 0xf4));
  }
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x678));
  if (*(int *)((int)windowComplete + 0x1c) != 0) {
    piVar5 = *(int **)((int)windowComplete + 0x1c);
    iVar6 = *(int *)((int)windowComplete + 0x18);
    *piVar5 = iVar6;
    *(int **)(iVar6 + 4) = piVar5;
  }
  if (*(int *)((int)windowComplete + 0x24) != 0) {
    piVar5 = *(int **)((int)windowComplete + 0x24);
    iVar6 = *(int *)((int)windowComplete + 0x20);
    *piVar5 = iVar6;
    *(int **)(iVar6 + 4) = piVar5;
  }
  if (*(int *)((int)windowComplete + 0x14) != 0) {
    piVar5 = *(int **)((int)windowComplete + 0x14);
    iVar6 = *(int *)((int)windowComplete + 0x10);
    *piVar5 = iVar6;
    *(int **)(iVar6 + 4) = piVar5;
  }
  puVar4 = *(undefined4 **)((int)this + 0x6ac);
  puVar2 = *(undefined4 **)((int)this + 0x6a8);
  while( true ) {
    for (; puVar2 != (undefined4 *)0x0; puVar2 = (undefined4 *)*puVar2) {
      if ((void *)puVar2[1] == windowComplete) {
        puVar2[2] = (int)windowComplete + 0x218;
      }
    }
    if (puVar4 == (undefined4 *)0x0) break;
    puVar2 = (undefined4 *)puVar4[1];
    puVar4 = (undefined4 *)*puVar4;
  }
  if ((*(int *)((int)windowComplete + 500) != 0) && (*(char *)((int)this + 0x30) == '\0')) {
    *(undefined1 *)((int)this + 0x30) = 1;
    iVar6 = *(int *)((int)this + 0x1c);
    while (iVar6 != (int)this + 0x18) {
      iVar6 = *(int *)((int)this + 0x1c);
      **(int **)(*(int *)((int)this + 0x1c) + 4) = (int)this + 0x18;
      *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)(*(int *)((int)this + 0x1c) + 4);
      *(undefined4 *)(iVar6 + 4) = 0;
      iVar6 = *(int *)((int)this + 0x1c);
    }
  }
  *(undefined4 *)((int)windowComplete + 500) = 0;
  *(undefined4 *)((int)windowComplete + 0x30) = 0;
  return;
}

