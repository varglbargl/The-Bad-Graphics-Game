Assets {
  Id: 2555807082249945326
  Name: "Bad Graphics Material"
  PlatformAssetType: 13
  SerializationVersion: 92
  CustomMaterialAsset {
    BaseMaterialId: 658768278076456267
    ParameterOverrides {
      Overrides {
        Name: "faceted"
        Bool: true
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 0.25
      }
      Overrides {
        Name: "roughness"
        Float: 1
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.132
          G: 0.0351999961
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_power"
        Float: 3
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "fresnel_sharpness"
        Float: -1
      }
    }
    Assets {
      Id: 658768278076456267
      Name: "Advanced Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "universal_material_001"
      }
    }
  }
}
