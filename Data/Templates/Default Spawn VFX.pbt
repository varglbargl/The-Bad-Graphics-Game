Assets {
  Id: 4048767687044730201
  Name: "Default Spawn VFX"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7854896527310467909
      Objects {
        Id: 7854896527310467909
        Name: "Default Spawn VFX"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6415757436236686241
        ChildIds: 14548420998360771850
        Lifespan: 1
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 6415757436236686241
        Name: "UI Pop Single 06 SFX"
        Transform {
          Location {
            Z: 45
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7854896527310467909
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
            Id: 855924803728068135
          }
          AutoPlay: true
          Pitch: -100
          Volume: 0.5
          Falloff: 1600
          Radius: 800
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 14548420998360771850
        Name: "NewFolder"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7854896527310467909
        ChildIds: 10737880354388301600
        Lifespan: 0.1
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 10737880354388301600
        Name: "NewFolder"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
            Roll: -58.4422913
          }
          Scale {
            X: 0.3
            Y: 0.3
            Z: 0.3
          }
        }
        ParentId: 14548420998360771850
        ChildIds: 7458579095610843959
        ChildIds: 10454321065256708600
        ChildIds: 13136243568680184056
        ChildIds: 8091238028944203412
        ChildIds: 16060999506083981019
        ChildIds: 5085576054235617557
        ChildIds: 12273038960994031045
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 7458579095610843959
        Name: "Simple Look At Local View"
        Transform {
          Location {
          }
          Rotation {
            Roll: 13.4423447
          }
          Scale {
            X: 2.99999976
            Y: 2.99999976
            Z: 2.99999976
          }
        }
        ParentId: 10737880354388301600
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
        Script {
          ScriptAsset {
            Id: 497320728139728614
          }
        }
      }
      Objects {
        Id: 10454321065256708600
        Name: "Simple Scale Parent"
        Transform {
          Location {
          }
          Rotation {
            Roll: -2.13443382e-05
          }
          Scale {
            X: 0.999999881
            Y: 0.999999881
            Z: 0.999999881
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "cs:Speed"
            Float: 7
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
        Script {
          ScriptAsset {
            Id: 13246694329671874582
          }
        }
      }
      Objects {
        Id: 13136243568680184056
        Name: "Plane Trapezoid - One Sided"
        Transform {
          Location {
            Y: -52.7802582
            Z: 10.9362259
          }
          Rotation {
            Pitch: 78.29422
            Yaw: 89.9999619
            Roll: -90.000267
          }
          Scale {
            X: 0.134222016
            Y: 0.653594851
            Z: 0.0671098828
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 69844939897041847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
        CoreMesh {
          MeshAsset {
            Id: 15152568979710955496
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8091238028944203412
        Name: "Plane Trapezoid - One Sided"
        Transform {
          Location {
            Y: -27.1557941
            Z: -46.5609322
          }
          Rotation {
            Pitch: 30.2521152
            Yaw: -89.9999542
            Roll: 89.9999695
          }
          Scale {
            X: 0.134222016
            Y: 0.653594851
            Z: 0.0671098828
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 69844939897041847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
        CoreMesh {
          MeshAsset {
            Id: 15152568979710955496
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16060999506083981019
        Name: "Plane Trapezoid - One Sided"
        Transform {
          Location {
            Y: 33.7811241
            Z: -42.0022888
          }
          Rotation {
            Pitch: -38.8086
            Yaw: -89.9999924
            Roll: 89.9999847
          }
          Scale {
            X: 0.134222016
            Y: 0.653594851
            Z: 0.0671098828
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 69844939897041847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
        CoreMesh {
          MeshAsset {
            Id: 15152568979710955496
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5085576054235617557
        Name: "Plane Trapezoid - One Sided"
        Transform {
          Location {
            Y: 51.8241348
            Z: 14.8195286
          }
          Rotation {
            Pitch: -74.041626
            Yaw: 89.9999237
            Roll: -89.9999237
          }
          Scale {
            X: 0.134222016
            Y: 0.653594851
            Z: 0.0671098828
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 69844939897041847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
        CoreMesh {
          MeshAsset {
            Id: 15152568979710955496
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12273038960994031045
        Name: "Plane Trapezoid - One Sided"
        Transform {
          Location {
            Y: -4.85777855e-06
            Z: 53.901371
          }
          Rotation {
            Yaw: 89.9999771
            Roll: -89.9999695
          }
          Scale {
            X: 0.134222016
            Y: 0.653594851
            Z: 0.0671098828
          }
        }
        ParentId: 10737880354388301600
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 69844939897041847
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
        CoreMesh {
          MeshAsset {
            Id: 15152568979710955496
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 855924803728068135
      Name: "UI Pop Single 06 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_ui_pop_single_06_Cue_ref"
      }
    }
    Assets {
      Id: 15152568979710955496
      Name: "Plane Trapezoid - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_trapezoid_001"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
  VirtualFolderPath: "VFX"
}
