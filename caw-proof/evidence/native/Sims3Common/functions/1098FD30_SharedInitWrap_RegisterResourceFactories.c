/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SharedInitWrap_RegisterResourceFactories. Export
   ordinal(s): 2311. Entry VA: 0x1098fd30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001D3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void SharedInitWrap_RegisterResourceFactories(void)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)FUN_108e50d0();
  if (piVar1 != (int *)0x0) {
    FUN_104d0030();
    puVar2 = FUN_10919060(0x10,"Renderer/TextureFactory",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = FUN_105150a0(puVar2);
    }
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    puVar2 = FUN_10919060(8,"Renderer/AnimatedTextureFactory",0);
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
    puVar2 = FUN_10919060(0x10,"Renderer/RadTextureFactory",0);
    if (puVar2 != (undefined4 *)0x0) {
      puVar2 = FUN_107cfae0(puVar2);
      (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
      return;
    }
    (**(code **)(*piVar1 + 0x28))(1,0,0);
  }
  return;
}

