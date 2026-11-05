/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartResourceWrap_GetGuid. Export ordinal(s):
   1726. Entry VA: 0x1097eec0. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int CASPartResourceWrap_GetGuid(void)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
                    /* 0x97eec0  1726  CASPartResourceWrap_GetGuid */
  iVar4 = 0;
  iVar2 = Ordinal_411(0x11,0,0x10);
  if ((iVar2 != 0) && (iVar3 = Ordinal_21(iVar2), -1 < iVar3)) {
    puVar1 = *(undefined4 **)(iVar2 + 0xc);
    *puVar1 = *(undefined4 *)(iVar4 + 0x28);
    puVar1[1] = *(undefined4 *)(iVar4 + 0x2c);
    puVar1[2] = *(undefined4 *)(iVar4 + 0x30);
    puVar1[3] = *(undefined4 *)(iVar4 + 0x34);
    Ordinal_22(iVar2);
  }
  return iVar2;
}

