/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Registers15 descriptors in instruction order and stores
   assigned runtime masks. Transform first, Animation third. Masks derive from registry state, not
   fixed component array offsets. Returns AL bool.
   
   PC1.67 original static instructions. Selected source closure: Model descriptor948610 and Tree
   descriptor95A150 are BOTH registered independently. Their descriptor names and registered masks
   are original data. This registry does not reduce an authored component vector to one renderer
   kind; a host Model-first presentation decision is a separate supported-family policy. */

bool __cdecl ObjectRegistry_RegisterDefaultComponents(void)

{
  void *this;
  void *descriptor;
  undefined **ppuVar1;
  
  this = ObjectRegistry_GetGlobal();
  if (this != (void *)0x0) {
    descriptor = TransformComponent_GetDescriptor();
    DAT_011ea158 = ObjectRegistry_RegisterComponentType(this,descriptor);
    ppuVar1 = ModelComponent_GetDescriptor();
    DAT_011e9fc4 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = AnimationComponent_GetDescriptor();
    DAT_011dd484 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0094d830();
    DAT_011ea0f8 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0094c420();
    DAT_011e9fc8 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_00943630();
    DAT_011e9e90 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = TreeComponent_GetDescriptor();
    DAT_011ea290 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0094eed0();
    DAT_011ea0fc = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_00952000();
    DAT_011ea138 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0094d100();
    DAT_011ea0f0 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0094fe00();
    DAT_011ea114 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_00947b80();
    DAT_011e9fc0 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_0095db60();
    DAT_011ea2a8 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_00944930();
    DAT_011e9fa8 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    ppuVar1 = FUN_00941eb0();
    DAT_011e9e70 = ObjectRegistry_RegisterComponentType(this,ppuVar1);
    return true;
  }
  return false;
}

