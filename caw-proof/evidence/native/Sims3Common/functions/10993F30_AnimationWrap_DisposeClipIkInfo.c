/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationWrap_DisposeClipIkInfo;
   SceneManWrap_Destroy; Sims3PackFile_Destroy; TextureBuilderWrap_Destroy; TextureDatabase_Destroy.
   Export ordinal(s): 1668; 2248; 2400; 2480; 2501. Entry VA: 0x10993f30. Original managed P/Invoke
   MethodDef(s): CSHostWrap:0x06000136; CSHostWrap:0x0600030F; CSHostWrap:0x06000A14;
   CSHostWrap:0x06000B98; WorldBuilderCS:0x0600032F. This is an export/declaration annotation only;
   ABI, behavior and runtime execution require the original instructions and caller evidence. */

void __cdecl AnimationWrap_DisposeClipIkInfo(undefined4 *param_1)

{
                    /* 0x993f30  1668  AnimationWrap_DisposeClipIkInfo
                       0x993f30  2248  SceneManWrap_Destroy
                       0x993f30  2400  Sims3PackFile_Destroy
                       0x993f30  2480  TextureBuilderWrap_Destroy
                       0x993f30  2501  TextureDatabase_Destroy */
  if (param_1 != (undefined4 *)0x0) {
    (**(code **)*param_1)(1);
  }
  return;
}

