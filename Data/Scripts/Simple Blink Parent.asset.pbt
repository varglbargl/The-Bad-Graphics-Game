Assets {
  Id: 10467598296277478962
  Name: "Simple Blink Parent"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:BlinkColor"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "cs:BlinkMaterial"
        AssetReference {
          Id: 69844939897041847
        }
      }
      Overrides {
        Name: "cs:OnTime"
        Float: 0.1
      }
      Overrides {
        Name: "cs:OffTime"
        Float: 0.9
      }
    }
    Assets {
      Id: 69844939897041847
      Name: "Emissive Glow Opaque"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_opaque_emissive"
      }
    }
  }
  SerializationVersion: 92
}
