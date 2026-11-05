/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX owner; distinct from reset. Volume virtual8 first, then nonzero slots descending1BC..144.
   Selected body does not clear latch or volume pointer; do not infer same lifetime semantics as
   reset. */

void __fastcall WeatherResources_ReleaseOwnedTextures(int param_1)

{
  uint *puVar1;
  
  if (*(int **)(param_1 + 0x1c0) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 0x1c0) + 8))();
  }
  puVar1 = (uint *)(param_1 + 0x1bc);
  if (*(int *)(param_1 + 0x1bc) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1b8);
  if (*(int *)(param_1 + 0x1b8) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1b4);
  if (*(int *)(param_1 + 0x1b4) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1b0);
  if (*(int *)(param_1 + 0x1b0) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1ac);
  if (*(int *)(param_1 + 0x1ac) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1a8);
  if (*(int *)(param_1 + 0x1a8) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1a4);
  if (*(int *)(param_1 + 0x1a4) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x1a0);
  if (*(int *)(param_1 + 0x1a0) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x19c);
  if (*(int *)(param_1 + 0x19c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x198);
  if (*(int *)(param_1 + 0x198) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x194);
  if (*(int *)(param_1 + 0x194) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 400);
  if (*(int *)(param_1 + 400) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x18c);
  if (*(int *)(param_1 + 0x18c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x188);
  if (*(int *)(param_1 + 0x188) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x184);
  if (*(int *)(param_1 + 0x184) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x180);
  if (*(int *)(param_1 + 0x180) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x17c);
  if (*(int *)(param_1 + 0x17c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x178);
  if (*(int *)(param_1 + 0x178) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x174);
  if (*(int *)(param_1 + 0x174) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x170);
  if (*(int *)(param_1 + 0x170) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x16c);
  if (*(int *)(param_1 + 0x16c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x168);
  if (*(int *)(param_1 + 0x168) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x164);
  if (*(int *)(param_1 + 0x164) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x160);
  if (*(int *)(param_1 + 0x160) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x15c);
  if (*(int *)(param_1 + 0x15c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x158);
  if (*(int *)(param_1 + 0x158) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x154);
  if (*(int *)(param_1 + 0x154) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x150);
  if (*(int *)(param_1 + 0x150) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x14c);
  if (*(int *)(param_1 + 0x14c) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x148);
  if (*(int *)(param_1 + 0x148) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  puVar1 = (uint *)(param_1 + 0x144);
  if (*(int *)(param_1 + 0x144) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  return;
}

