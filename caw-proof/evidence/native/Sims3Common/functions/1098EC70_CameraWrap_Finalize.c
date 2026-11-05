/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_Finalize. Export ordinal(s): 1745.
   Entry VA: 0x1098ec70. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000856. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: CameraWrap_Finalize delegates to0x10753C10, including
   original projection construction. Separate rendering API conversions must not be inferred from
   this wrapper. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __cdecl CameraWrap_Finalize(void *param_1)

{
                    /* 0x98ec70  1745  CameraWrap_Finalize */
  CAW_CameraFinalizeProjectionAndView(param_1,'\0');
  return;
}

