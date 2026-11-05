/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object and one full typeIdentity DWORD, RET4;
   EAX complete pointer. Stores dynamic class identity+250 separately from flags+284=1. Builds
   actual property descriptor at+288 and two initial20byte rows in allocated storage; second row
   is03AA2001,type9,signed field offset284,count1. Its first inherited row and custom delegate rows
   remain actual separate callbacks. Overflow/allocation/indirect-call artifacts are not guessed new
   prototypes. Full body ends RET4 at007E3670..72. */

void * __thiscall Sims3CustomProxyControl_Construct(void *this,uint typeIdentity)

{
  int *piVar1;
  ushort uVar2;
  undefined4 uVar3;
  longlong lVar4;
  float fVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iVar8;
  int *local_18;
  uint local_8;
  
  FUN_00516090(this);
  fVar5 = FLOAT_00f998f8;
  *(uint *)((int)this + 0x250) = typeIdentity;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_0101c7e8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0101c6c0;
  *(undefined1 *)((int)this + 0x254) = 0;
  *(float *)((int)this + 0x268) = fVar5;
  *(undefined4 *)((int)this + 0x26c) = DAT_0103fd88;
  *(char **)((int)this + 0x274) = "UI/Sims3CustomProxyControlDelegateMap";
  *(undefined4 **)((int)this + 0x25c) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x264) = 0;
  *(undefined4 *)((int)this + 0x270) = 0;
  iVar8 = (int)this + 0x278;
  *(undefined4 *)((int)this + 0x260) = 1;
  *(char **)((int)this + 0x280) = "UI/Sims3CustomProxyControlReadCache";
  *(int *)iVar8 = iVar8;
  *(int *)((int)this + 0x27c) = iVar8;
  *(undefined4 *)((int)this + 0x284) = 1;
  FUN_007e2c80(this,0x36997e5);
  lVar4 = (ulonglong)(*(int *)((int)this + 0x264) + 2) * 0x14;
  puVar6 = (undefined4 *)
           FUN_004e4500(-(uint)((int)((ulonglong)lVar4 >> 0x20) != 0) | (uint)lVar4,
                        "UI/Sims3ProxyControlSerPropertyInfo",0);
  *(undefined4 **)((int)this + 0x2a8) = puVar6;
  *puVar6 = 0;
  puVar6[1] = &DAT_00fbc0b8;
  puVar6[2] = 0;
  puVar6[3] = 1;
  puVar6[4] = 0;
  iVar8 = *(int *)((int)this + 0x2a8);
  *(undefined4 *)(iVar8 + 0x14) = 0;
  *(undefined4 *)(iVar8 + 0x18) = 0;
  *(undefined4 *)(iVar8 + 0x1c) = 0x3aa2001;
  *(undefined4 *)(iVar8 + 0x20) = 0x2840009;
  *(undefined4 *)(iVar8 + 0x24) = 1;
  local_18 = *(int **)((int)this + 0x25c);
  puVar6 = (undefined4 *)*local_18;
  if (puVar6 == (undefined4 *)0x0) {
    local_18 = local_18 + 1;
    iVar8 = *local_18;
    while (iVar8 == 0) {
      local_18 = local_18 + 1;
      iVar8 = *local_18;
    }
    puVar6 = (undefined4 *)*local_18;
  }
  if (puVar6 != *(undefined4 **)(*(int *)((int)this + 0x25c) + *(int *)((int)this + 0x260) * 4)) {
    iVar8 = 0x28;
    do {
      uVar3 = *puVar6;
      uVar2 = *(ushort *)(puVar6 + 1);
      puVar7 = (undefined4 *)(*(int *)((int)this + 0x2a8) + iVar8);
      *puVar7 = 0;
      puVar7[1] = &PTR_LAB_0101c630;
      puVar7[2] = uVar3;
      local_8 = (uint)uVar2;
      puVar7[3] = local_8;
      puVar7[4] = 1;
      iVar8 = iVar8 + 0x14;
      puVar6 = (undefined4 *)puVar6[4];
      while (puVar6 == (undefined4 *)0x0) {
        piVar1 = local_18 + 1;
        local_18 = local_18 + 1;
        puVar6 = (undefined4 *)*piVar1;
      }
    } while (puVar6 != *(undefined4 **)
                        (*(int *)((int)this + 0x25c) + *(int *)((int)this + 0x260) * 4));
  }
  *(undefined4 *)((int)this + 0x28c) = *(undefined4 *)((int)this + 0x250);
  *(undefined2 *)((int)this + 0x288) = 0x13;
  *(undefined4 *)((int)this + 0x290) = 4;
  *(undefined4 *)((int)this + 0x294) = *(undefined4 *)((int)this + 0x2a8);
  *(int *)((int)this + 0x298) = *(int *)((int)this + 0x264) + 2;
  *(undefined1 **)((int)this + 0x29c) = &LAB_0077ee70;
  *(undefined1 **)((int)this + 0x2a0) = &LAB_00535470;
  *(undefined1 **)((int)this + 0x2a4) = &LAB_0053e9e0;
  return this;
}

