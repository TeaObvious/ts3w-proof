# Original managed auto-plant creation

Static original PC1.67 `Sims3GameplaySystems.dll` from its shipped gameplay S3SA.
The [central original assembly identity](../../evidence/managed/README.md#matching-original-assembly-identities)
binds tokens to the admitted original hash/MVID; sibling reconstruction is not
authority. Six complete original members total680 CIL bytes. C# is actual
annotated ILSpy11.1 selected-member rendering, independently checked against
raw-CIL decoder opcode offsets and every selected branch destination. No target
code or gameplay test was executed. Native Ghidra bytes remain unchanged.

## Complete managed member pairs

| Token | Original member | CIL and decompiled member |
| --- | --- | --- |
| `0x06003e5f` | `Plant::OnCreation` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x06003e5f.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x06003e5f.cs)) |
| `0x06003e88` | `Plant::CreateAutoPlantFromSeed` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x06003e88.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x06003e88.cs)) |
| `0x06003e89` | `Plant::DoCreatePlantFromSeed` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x06003e89.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x06003e89.cs)) |
| `0x0600a96c` | `SoilAutoPlant::OnCreation` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x0600a96c.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x0600a96c.cs)) |
| `0x0600a96d` | `SoilAutoPlant::GetInitGrowthState` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x0600a96d.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x0600a96d.cs)) |
| `0x0600a96e` | `SoilAutoPlant::CreateSeed` | [Original CIL](../../evidence/managed/selected/soil-auto-plant/0x0600a96e.il.txt) ([annotated C#](../../evidence/managed/selected/soil-auto-plant/0x0600a96e.cs)) |

[Member index](../../evidence/managed/selected/soil-auto-plant/members.tsv) records
exact tokens/RVAs/IL sizes and both files. [Selected call edges](../../evidence/managed/selected/soil-auto-plant/calls.tsv)
include direct/virtual calls, constructors and function-pointer production from
these six bodies only. Complete-target flags refer to this selected set;
unexpanded base/factory/native/RNG methods retain their original identities.

## Ownership and entry gates

`SoilAutoPlant.OnCreation` is ORIGINAL MANAGED gameplay policy. Call original
base `Soil.OnCreation` first. If original `Environment.HasEditInGameModeSwitch`
is true, return. Otherwise query original Plant containment slot using the
soil ObjectId. Existing contained GUID or false original `Objects.IsValid`
prevents seed/child creation. Do not infer these gates from a script-class suffix,
visibility, an XML resource or the existence of a display mesh.

Call `CreateSeed`. Null returns without child creation. Otherwise call original
`Plant.CreateAutoPlantFromSeed(seed,this)`. Null child destroys the seed; nonnull
child calls original `Soil.SetPlanted`. These selected methods contain no local
catch/retry or rollback. Base method, slot/object validity and destruction
internals remain separate contracts. Whether a saved-world object should reach
creation rather than loading must be established from its actual lifecycle.

## Seed lookup and failure behavior

Start with null seed. Invoke virtual `GetPlantableNameKey`, query original
`IngredientData.NameToDataMap` and, if found, call `Ingredient.Create`.
Only if the resulting seed is STILL null, invoke virtual `GetPlantableNameKey`
AGAIN, query `PlantableNonIngredientData.NameToDataMap`, and if found call
`PlantableNonIngredient.Create(data, Quality.Neutral, true, PlayerDisclosure.Exposed)`.
The latter call's CIL argument constants are5,1,0. Map lookup failure and an
Ingredient factory returning null both admit the second branch.

No generic separator/case normalization or appended `Seed` fallback is present
in this selected member. The two virtual key calls need not be pure or return
the same key. Keep override/hook dispatch; replacing them with class-name parsing
would bypass original subclass and script-mod behavior. Nonnull resulting seed
receives `RemoveFromWorld` before returning. It remains a gameplay object, not
merely a resource/model identifier.

## Plant definition, quality and parented creation

`CreateAutoPlantFromSeed` queries `PlantHelper.GetPlantDefinition(seed)`; missing
definition returns null. Use original Plantable component QualityLevel when it
exists, otherwise `GetQualityLevelMedian` with enum literal5. Pass seed, quality,
definition and soil to original `PlantInitParameters`, then delegate to
`DoCreatePlantFromSeed` with original `IsMushroom(seed)` result.

Use the definition's original `MedatorName` spelling. Default shroom count3.
For mushrooms request original `RandomUtil.GetInt(0,2)`; returned1 appends `1`,
returned2 appends `2`, other returned values keep base name. RNG range/probability
and seed consumption are outside this selected member. Ask definition
`GetDataVersion`; false falls back to `ProductVersion.BaseGame`.

Call ORIGINAL `GlobalFunctions.CreateObjectParentedToSlot` with chosen name,
version, soil, original `Soil.ContainmentSlots.Plant`, null and init parameters.
Null object or a returned object that is not a `Plant` returns null. The latter
member does not locally destroy the non-Plant object; broader factory cleanup
is open. A valid Plant receives shroom count and soil reference, propagates
its dormant flag to nonnull soil, updates soil dampness, and notifies a FlameFruit
seed when original `PlantHelper.IsSeed` is false and the original cast succeeds.
The native create/GUID/slot/render/serialization mechanism remains separate.

## Plant creation and virtual growth state

Original `Plant.OnCreation` first calls its original base. Read original simulator
init parameters by ObjectId, accept only `PlantInitParameters`. When present,
copy quality/seed/definition through original members; nonnull seed moves to the
Plant Position and is removed from world. Then, even without init parameters:

1. Set last evaluation time using original elapsed hours and water level50f.
2. Request random float with bound `kDailyEvaluatePlantGrowthVarianceInSimMinutes / 60f`.
3. Register daily growth alarm at `5f + result`, all days, original callback and
   `AlarmType.AlwaysPersisted`, retaining its returned handle.
4. Start with `PlantGrowthState.Planted`. If the init soil is `SoilAutoPlant`,
   invoke its VIRTUAL `GetInitGrowthState`.
5. Call original `SetGrowthState`, `UpdateHealth`, `UpdateSeasonalState` and
   `UpdateMaterialState`, in that order.

Default `SoilAutoPlant.GetInitGrowthState` calls original `RandomUtil.CoinFlip`:
true returns enum literal4 (`Mature`), false5 (`Harvest`). This is not a fixed
mature choice, does not prohibit a subclass override, and does not establish
RNG probability. These members alone do NOT prove both states select the same
mesh/geometry state. Alarm scheduling, original updates and their native
render/resource consumers need their own contracts.

## Current visual reconstruction boundary

Current world preview can synthesize a child from installed XML/catalog and a
script-name suffix, normalize keys/add a seed suffix, derive a deterministic
bridge GUID, choose a mature display state and compose a resource/slot transform.
Those are project visualization policies, not the original managed creation
contract. Actual caller-family equivalence, saved child serialization, package
selection and full native parent/slot/output behavior are unresolved.

Keep general resource decoding, transform composition and rendering mechanisms
separate from original gameplay decisions. Preserve original fully qualified
method names/signatures, virtual key/growth hooks, original object identity and
state. Script mods must reach the same hooks. A visualization fallback must not
be installed as a second gameplay seed/plant/alarm/season workflow. No visual
fallback is removed or declared a reproduced bug by this static comparison.
