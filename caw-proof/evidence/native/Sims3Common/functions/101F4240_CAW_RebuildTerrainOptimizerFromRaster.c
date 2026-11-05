/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Passes the live raster uint16 data, byte row stride, width
   minus one and height-map quantum into optimizer initialization 0x1025E010. It consumes the stored
   quantized samples, rather than deferred floating sculpt candidates. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __fastcall CAW_RebuildTerrainOptimizerFromRaster(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(*(int *)(param_1 + 8) + 8);
  iVar2 = FUN_100688b0(iVar1);
  iVar1 = *(int *)(iVar1 + 0x14);
  CAW_InitializeTerrainOptimizer
            (*(void **)(param_1 + 0x68),iVar2,iVar1 * 2,iVar1 - 1,
             *(int *)(*(int *)(param_1 + 8) + 0x24));
  return;
}

