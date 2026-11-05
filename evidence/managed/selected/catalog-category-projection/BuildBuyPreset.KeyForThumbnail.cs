// Actual ILSpy11.1 original PC1.67 SimIFace C# excerpt, complete selected property
// Sims3.SimIFace.BuildBuy.BuildBuyPreset.KeyForThumbnail, MethodDef060000B0.
// Full original58-byte getter CIL, typed field/call operands and metadata are
// paired in BuildBuyPreset.KeyForThumbnail.il.txt. Preserve full preset IDs in
// product storage; thumbnail group explicitly keeps only low24 ID bits.

	public ResourceKey KeyForThumbnail
	{
		get
		{
			ResourceKey productResourceKey = Product.ProductResourceKey;
			return new ResourceKey(productResourceKey.InstanceId, productResourceKey.TypeId, (productResourceKey.GroupId & 0xFF000000u) | (mPresetID & 0xFFFFFF));
		}
	}
