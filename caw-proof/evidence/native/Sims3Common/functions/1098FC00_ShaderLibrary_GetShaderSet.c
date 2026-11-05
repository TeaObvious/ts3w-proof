/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderLibrary_GetShaderSet. Export ordinal(s):
   2299. Entry VA: 0x1098fc00. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060003B4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl ShaderLibrary_GetShaderSet(uint param_1)

{
  undefined4 uVar1;
  int iVar2;
  int *local_4;
  
                    /* 0x98fc00  2299  ShaderLibrary_GetShaderSet */
  local_4 = (int *)0x0;
  uVar1 = FUN_1058e450(DAT_10c7bd94,param_1,&local_4,'\0');
  if ((char)uVar1 != '\0') {
    if ((local_4 != (int *)0x0) && (iVar2 = (**(code **)(*local_4 + 0xc))(0x3212e84), iVar2 != 0)) {
      return iVar2;
    }
    (**(code **)(*local_4 + 4))();
  }
  return 0;
}

