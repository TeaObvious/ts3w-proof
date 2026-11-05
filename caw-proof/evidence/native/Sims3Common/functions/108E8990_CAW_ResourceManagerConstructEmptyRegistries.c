/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes manager-owned factory, database, cache, TNMap
   and other registries. TNMap at +F0 starts empty, with bucket count one and entry count zero
   (+108); registry names identify ResourceSystem/ResourceMan/Mgr/TNMap. Does not seed built-in
   extension-to-type aliases. Later registration remains possible. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

undefined4 * __thiscall CAW_ResourceManagerConstructEmptyRegistries(void *this,int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined2 *puVar5;
  int iVar6;
  
  *(undefined ***)this = &PTR_FUN_10b87f58;
  *(undefined1 *)((int)this + 4) = 0;
  if (param_1 == 0) {
    param_1 = FUN_10722830();
  }
  *(int *)((int)this + 8) = param_1;
  *(undefined1 *)((int)this + 0xc) = 0;
  iVar6 = (int)this + 0x10;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(int *)((int)this + 0x24) = param_1;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(char **)((int)this + 0x2c) = "ResourceSystem/ResourceMan/Mgr/FISet";
  *(int *)iVar6 = iVar6;
  *(int *)((int)this + 0x14) = iVar6;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined1 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0x40) = 0;
  *(char **)((int)this + 0x44) = "ResourceSystem/ResourceMan/Mgr/DBArray";
  FUN_109167b0((void *)((int)this + 0x48),(char *)0x0,'\x01');
  uVar2 = DAT_10acb0d4;
  *(undefined4 *)((int)this + 0x88) = DAT_10acb0d4;
  uVar1 = _DAT_10aadffc;
  *(undefined4 *)((int)this + 0x8c) = _DAT_10aadffc;
  *(undefined4 *)((int)this + 0x94) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0x98) = 0;
  *(char **)((int)this + 0x9c) = "ResourceSystem/ResourceMan/Mgr/TFMap";
  uVar3 = DAT_10b87e88;
  *(undefined4 *)((int)this + 0x80) = 1;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 **)((int)this + 0x7c) = &DAT_10c571f8;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(char **)((int)this + 0xb4) = "ResourceSystem/ResourceMan/Mgr/CArray";
  *(undefined4 *)((int)this + 0xe8) = 2;
  *(undefined4 *)((int)this + 0xec) = uVar3;
  *(undefined4 *)((int)this + 0x100) = uVar2;
  *(undefined4 *)((int)this + 0x104) = uVar1;
  *(undefined4 *)((int)this + 0x10c) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0x110) = 0;
  *(char **)((int)this + 0x114) = "ResourceSystem/ResourceMan/Mgr/TNMap";
  *(undefined4 **)((int)this + 0xf4) = &DAT_10c571f8;
  *(undefined4 *)((int)this + 0xf8) = 1;
  *(undefined4 *)((int)this + 0xfc) = 0;
  *(undefined4 *)((int)this + 0x108) = 0;
  *(undefined4 *)((int)this + 0x128) = uVar2;
  *(undefined4 *)((int)this + 300) = uVar1;
  *(undefined4 *)((int)this + 0x134) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0x138) = 0;
  *(char **)((int)this + 0x13c) = "ResourceSystem/ResourceMan/Mgr/OKNMap";
  *(undefined4 **)((int)this + 0x11c) = &DAT_10c571f8;
  *(undefined4 *)((int)this + 0x120) = 1;
  *(undefined4 *)((int)this + 0x124) = 0;
  *(undefined4 *)((int)this + 0x130) = 0;
  FUN_109167b0((void *)((int)this + 0x140),(char *)0x0,'\x01');
  FUN_109167b0((void *)((int)this + 0x170),(char *)0x0,'\x01');
  FUN_109167b0((void *)((int)this + 0x1a0),(char *)0x0,'\x01');
  puVar5 = (undefined2 *)((int)this + 0xd8);
  puVar4 = (undefined4 *)((int)this + 0xb8);
  iVar6 = 8;
  do {
    *puVar4 = 0;
    *puVar5 = 0;
    puVar4 = puVar4 + 1;
    puVar5 = puVar5 + 1;
    iVar6 = iVar6 + -1;
  } while (iVar6 != 0);
  return this;
}

