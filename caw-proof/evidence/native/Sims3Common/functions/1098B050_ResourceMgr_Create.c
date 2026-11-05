/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_Create. Export ordinal(s): 2016.
   Entry VA: 0x1098b050. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

undefined4 ResourceMgr_Create(void)

{
  int *piVar1;
  undefined4 *puVar2;
  
                    /* 0x98b050  2016  ResourceMgr_Create */
  if (DAT_10cb8078 == 0) {
    DAT_10cb8078 = FUN_10918eb0(0x20,"g_pDatabaseMap",0);
    if (DAT_10cb8078 == 0) {
      DAT_10cb8078 = 0;
    }
    else {
      *(undefined4 *)(DAT_10cb8078 + 0x10) = DAT_10acb0d4;
      *(undefined4 *)(DAT_10cb8078 + 0x14) = _DAT_10aadffc;
      *(char **)(DAT_10cb8078 + 0x1c) = "ResourceSystem/ManagerWrap";
      *(undefined4 *)(DAT_10cb8078 + 8) = 1;
      *(undefined4 **)(DAT_10cb8078 + 4) = &DAT_10c571f8;
      *(undefined4 *)(DAT_10cb8078 + 0xc) = 0;
      *(undefined4 *)(DAT_10cb8078 + 0x18) = 0;
    }
    piVar1 = (int *)FUN_108e50d0();
    FUN_104d0030();
    puVar2 = FUN_10919060(8,"ObjectSlotResourceFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      *puVar2 = &PTR_LAB_10ac7444;
      LOCK();
      puVar2[1] = 0;
      UNLOCK();
      *puVar2 = &PTR_LAB_10b96e90;
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(0x10,"TextureFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_105150a0(puVar2);
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(8,"AnimatedTextureFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      *puVar2 = &PTR_LAB_10ac7444;
      LOCK();
      puVar2[1] = 0;
      UNLOCK();
      *puVar2 = &PTR_LAB_10b2b398;
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(0x10,"RadTextureFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_107cfae0(puVar2);
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(0x10,"RigResourceFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_10377c20(puVar2);
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(0x10,"ClipResourceFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_10376e40(puVar2);
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    FUN_103d9ee0('\x01');
    FUN_10377a60();
    FUN_105219e0();
    FUN_105c0120();
    FUN_105c90c0();
    FUN_10728d70();
  }
  return 1;
}

