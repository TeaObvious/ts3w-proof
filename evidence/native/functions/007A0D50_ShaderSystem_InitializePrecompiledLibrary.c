/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: shader-system startup. Establishes renderer globals, configures shader
   paths/capabilities, tracks the chosen binary file, and loads the precompiled package once. The
   original caller supplies two mode flags in bytes at offsets +0x10 and +0x11. */

undefined4 __fastcall ShaderSystem_InitializePrecompiledLibrary(int param_1)

{
  void *this;
  undefined4 uVar1;
  short *psVar2;
  
  DAT_011d8530 = param_1 + 0x18;
  FUN_0060e910();
  this = (void *)(param_1 + 0x148);
  *(undefined4 *)(param_1 + 0x188) = *(undefined4 *)(param_1 + 0x14);
  FUN_0079b330(this);
  uVar1 = ShaderLibrary_ConfigurePathsAndCapabilities
                    (this,(short *)(uint)*(byte *)(param_1 + 0x10),*(undefined1 *)(param_1 + 0x11));
  if ((char)uVar1 == '\0') {
    return uVar1;
  }
  psVar2 = (short *)FUN_00739aa0((int)this);
  ShaderWatcher_TrackFile((void *)(param_1 + 0x1d8),psVar2);
  uVar1 = ShaderLibrary_LoadPrecompiledPackage(this,'\0');
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

