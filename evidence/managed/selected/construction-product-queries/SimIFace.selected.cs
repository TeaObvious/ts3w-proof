// Actual ILSpy11.1 excerpts from pristine PC1.67 SimIFace; complete selected methods/properties.
// UserToolUtils calls native-backed ProductGeneric; BuildBuyProduct preserves wrapper policy.
// FullUInt32 inputs/results remain distinct from thumbnail low24 ID encoding.
// Matching complete original CIL, method headers and token operands: SimIFace.cil.txt.

internal static bool GetIsVisibleInWorldBuilder(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 30u, ref retUint, ref retResKey, ref retFloat);
		return retUint == 1;
	}

internal static string GetProductCatalogName(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		return gUserToolUtils.ProductGeneric(product.Handle, 1u, ref retUint, ref retResKey, ref retFloat);
	}

internal static ulong GetProductCatalogNameKey(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 39u, ref retUint, ref retResKey, ref retFloat);
		return retResKey.InstanceId;
	}

internal static uint GetProductCategory(BuildBuyProduct product, BuildBuyProductType type)
	{
		return gUserToolUtils.GetProductCategory(product.Handle, (uint)type);
	}

internal static string GetProductDescription(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		return gUserToolUtils.ProductGeneric(product.Handle, 2u, ref retUint, ref retResKey, ref retFloat);
	}

internal static float GetProductEnvironmentScore(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 6u, ref retUint, ref retResKey, ref retFloat);
		return retFloat;
	}

internal static uint GetProductFireType(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 7u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

internal static bool GetProductIsReposesable(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 9u, ref retUint, ref retResKey, ref retFloat);
		return retUint == 1;
	}

internal static bool GetProductIsStealable(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 8u, ref retUint, ref retResKey, ref retFloat);
		return retUint == 1;
	}

internal static uint GetProductNumLevels(BuildBuyProduct product)
	{
		uint retUint = 1u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 29u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

internal static uint GetProductPatternSubsort(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 16u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

internal static uint GetProductPatternType(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 15u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

internal static float GetProductPrice(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 5u, ref retUint, ref retResKey, ref retFloat);
		return retFloat;
	}

internal static ResourceKey GetProductResourceKey(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 0u, ref retUint, ref retResKey, ref retFloat);
		return retResKey;
	}

internal static uint GetProductSetID(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 28u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

internal static uint GetProductStatusFlag(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 3u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

public static bool ProductHasUserPreset(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 18u, ref retUint, ref retResKey, ref retFloat);
		return retUint != 0;
	}

public static bool ProductIsPagodaRoof(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 27u, ref retUint, ref retResKey, ref retFloat);
		return retUint != 0;
	}

public static uint ProductNumPresets(BuildBuyProduct product)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 17u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

public static ResourceKeyContentCategory ProductPresetContentTypeAtIndex(BuildBuyProduct product, uint index)
	{
		uint retUint = index;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 21u, ref retUint, ref retResKey, ref retFloat);
		return (ResourceKeyContentCategory)retUint;
	}

public static void ProductPresetDeleteAtId(BuildBuyProduct product, uint id)
	{
		uint retUint = id;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 26u, ref retUint, ref retResKey, ref retFloat);
	}

public static uint ProductPresetIdAtIndex(BuildBuyProduct product, uint index)
	{
		uint retUint = index;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 20u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

public static uint ProductPresetIndexFromId(BuildBuyProduct product, uint presetId)
	{
		uint retUint = presetId;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 19u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

public static uint ProductPresetSubsortAtIndex(BuildBuyProduct product, uint index)
	{
		uint retUint = index;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		gUserToolUtils.ProductGeneric(product.Handle, 22u, ref retUint, ref retResKey, ref retFloat);
		return retUint;
	}

public BuildBuyPreset PresetAtIndex(uint index)
	{
		uint num = UserToolUtils.ProductPresetIdAtIndex(this, index);
		if (num != uint.MaxValue)
		{
			return new BuildBuyPreset(this, num);
		}
		return null;
	}

public BuildBuyPreset PresetWithId(uint presetId)
	{
		if (presetId != uint.MaxValue)
		{
			return new BuildBuyPreset(this, presetId);
		}
		return null;
	}

public float Price => UserToolUtils.GetProductPrice(this);

public float EnvironmentScore => UserToolUtils.GetProductEnvironmentScore(this);

public uint FireType => UserToolUtils.GetProductFireType(this);

public uint NumPresets => UserToolUtils.ProductNumPresets(this);

public ePatternType PatternType => (ePatternType)UserToolUtils.GetProductPatternType(this);

public uint PatternSubsort => UserToolUtils.GetProductPatternSubsort(this);
