Assets {
  Id: 8718155860146548893
  Name: "Rat Attack VFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8702578595019950290
      Objects {
        Id: 8702578595019950290
        Name: "Rat Attack VFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10018463976040030217
        ChildIds: 8220391639598631619
        ChildIds: 4899159348998637264
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 10018463976040030217
        Name: "Impact Lines VFX"
        Transform {
          Location {
            X: 100
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8702578595019950290
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 1
              G: 0.0333333611
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 0.650000036
              A: 1
            }
          }
          Overrides {
            Name: "bp:Enable Secondary Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Use Texture Intensity For Gradient"
            Bool: true
          }
          Overrides {
            Name: "bp:Enable Primary Lines"
            Bool: false
          }
          Overrides {
            Name: "bp:Flash Scale Multiplier"
            Float: 3
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.116666675
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 13337501806504636419
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
      Objects {
        Id: 8220391639598631619
        Name: "Squeaky Toy 03 SFX"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8702578595019950290
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 4899923684842662943
          }
          AutoPlay: true
          Volume: 0.8
          Falloff: 2000
          Radius: 1000
          FadeOutTime: 0.2
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
          StopTime: 0.15
        }
      }
      Objects {
        Id: 4899159348998637264
        Name: "Impact Retro Hit 02 SFX"
        Transform {
          Location {
            X: 100
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8702578595019950290
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 9405194714957434796
          }
          AutoPlay: true
          Volume: 1
          Falloff: 2000
          Radius: 1000
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
    }
    Assets {
      Id: 13337501806504636419
      Name: "Impact Lines VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_impact_lines"
      }
    }
    Assets {
      Id: 4899923684842662943
      Name: "Squeaky Toy 03 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_squeaky_toy_03a_Cue_ref"
      }
    }
    Assets {
      Id: 9405194714957434796
      Name: "Impact Retro Hit 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_impact_retro_hit_02_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
  VirtualFolderPath: "VFX"
}
