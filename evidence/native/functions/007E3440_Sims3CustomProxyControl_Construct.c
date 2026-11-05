/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static. ECX complete object and one full typeIdentity DWORD, RET4;
   EAX complete pointer. Stores dynamic class identity+250 separately from flags+284=1. Builds
   actual property descriptor at+288 and two initial20byte rows in allocated storage; second row
   is03AA2001,type9,signed field offset284,count1. Its first inherited row and custom delegate rows
   remain actual separate callbacks. Overflow/allocation/indirect-call artifacts are not guessed new
   prototypes. Full body ends RET4 at007E3670..72. */

void * __thiscall Sims3CustomProxyControl_Construct(void *this,uint typeIdentity)

{
  ushort uVar1;
  undefined4 uVar2;
  longlong lVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int *local_18;
  uint local_8;
  
  Window_InitializeNativeFields(this);
  *(uint *)((int)this + 0x250) = typeIdentity;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_0101c7e8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0101c6c0;
  *(undefined1 *)((int)this + 0x254) = 0;
  *(float *)((int)this + 0x268) = 1.0;
  *(undefined4 *)((int)this + 0x26c) = 0x40000000;
  *(char **)((int)this + 0x274) = "UI/Sims3CustomProxyControlDelegateMap";
  *(undefined4 **)((int)this + 0x25c) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x264) = 0;
  *(undefined4 *)((int)this + 0x270) = 0;
  iVar6 = (int)this + 0x278;
  *(undefined4 *)((int)this + 0x260) = 1;
  *(char **)((int)this + 0x280) = "UI/Sims3CustomProxyControlReadCache";
  *(int *)iVar6 = iVar6;
  *(int *)((int)this + 0x27c) = iVar6;
  *(undefined4 *)((int)this + 0x284) = 1;
  FUN_007e2c80(this,0x36997e5);
  lVar3 = (ulonglong)(*(int *)((int)this + 0x264) + 2) * 0x14;
  puVar4 = (undefined4 *)
           FUN_004e4500(-(uint)((int)((ulonglong)lVar3 >> 0x20) != 0) | (uint)lVar3,
                        "UI/Sims3ProxyControlSerPropertyInfo",0);
  *(undefined4 **)((int)this + 0x2a8) = puVar4;
  *puVar4 = 0;
  puVar4[1] = &DAT_00fbc0b8;
  puVar4[2] = 0;
  puVar4[3] = 1;
  puVar4[4] = 0;
  iVar6 = *(int *)((int)this + 0x2a8);
  *(undefined4 *)(iVar6 + 0x14) = 0;
  *(undefined4 *)(iVar6 + 0x18) = 0;
  *(undefined4 *)(iVar6 + 0x1c) = 0x3aa2001;
  *(undefined4 *)(iVar6 + 0x20) = 0x2840009;
  *(undefined4 *)(iVar6 + 0x24) = 1;
  local_18 = *(int **)((int)this + 0x25c);
  puVar4 = (undefined4 *)*local_18;
  if (puVar4 == (undefined4 *)0x0) {
    local_18 = local_18 + 1;
    iVar6 = *local_18;
    while (iVar6 == 0) {
      local_18 = local_18 + 1;
      iVar6 = *local_18;
    }
    puVar4 = (undefined4 *)*local_18;
  }
  if (puVar4 != *(undefined4 **)(*(int *)((int)this + 0x25c) + *(int *)((int)this + 0x260) * 4)) {
    iVar6 = 0x28;
    do {
      uVar2 = *puVar4;
      uVar1 = *(ushort *)(puVar4 + 1);
      puVar5 = (undefined4 *)(*(int *)((int)this + 0x2a8) + iVar6);
      *puVar5 = 0;
      puVar5[1] = &PTR_LAB_0101c630;
      puVar5[2] = uVar2;
      local_8 = (uint)uVar1;
      puVar5[3] = local_8;
      puVar5[4] = 1;
      puVar4 = (undefined4 *)puVar4[4];
      iVar6 = iVar6 + 0x14;
      if (puVar4 == (undefined4 *)0x0) {
        do {
          puVar4 = (undefined4 *)local_18[1];
          local_18 = local_18 + 1;
        } while (puVar4 == (undefined4 *)0x0);
      }
    } while (puVar4 != *(undefined4 **)
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

