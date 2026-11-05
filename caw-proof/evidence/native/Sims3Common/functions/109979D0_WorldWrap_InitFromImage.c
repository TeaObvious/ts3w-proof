/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_InitFromImage. Export ordinal(s): 2670.
   Entry VA: 0x109979d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004A5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl
WorldWrap_InitFromImage
          (void *param_1,wchar_t *param_2,float param_3,float param_4,ushort *param_5,
          undefined4 param_6)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 local_10 [4];
  
                    /* 0x9979d0  2670  WorldWrap_InitFromImage */
  puVar2 = (undefined4 *)FUN_1055daa0(local_10,(undefined4 *)&stack0x0000001c);
  uVar1 = FUN_10241590(param_1,param_2,param_3,param_4,param_5,param_6,puVar2);
  FUN_107882e0(&stack0xffffffd8);
  FUN_10235fa0((int)param_1);
  return uVar1;
}

