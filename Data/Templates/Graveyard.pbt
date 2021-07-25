Assets {
  Id: 9104709878388478628
  Name: "Graveyard"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9071545578764586568
      Objects {
        Id: 9071545578764586568
        Name: "Graveyard"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17065767821936964946
        ChildIds: 15385905906061302230
        ChildIds: 16317856468460513630
        ChildIds: 7986951085662330853
        ChildIds: 11512183970349378233
        ChildIds: 4996379407951847955
        ChildIds: 890297872088522620
        ChildIds: 4541723034242051886
        ChildIds: 1060558706646123356
        ChildIds: 13549584431837752722
        ChildIds: 2469187478046301399
        ChildIds: 10899408795479603485
        ChildIds: 16178852011672294713
        ChildIds: 7020761473631234777
        ChildIds: 2865975317797146736
        ChildIds: 15843342820266964702
        ChildIds: 1614648346409298653
        ChildIds: 11013087303102016404
        ChildIds: 1543380571226900774
        ChildIds: 12810797909048297843
        ChildIds: 5720691103572921123
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
        Id: 15385905906061302230
        Name: "Spawn Point"
        Transform {
          Location {
            Z: 125
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9071545578764586568
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
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        PlayerSpawnPoint {
          TeamInt: 1
          PlayerScaleMultiplier: 1
          SpawnKey: "Graveyard"
          SpawnEffectsTemplate {
            Id: 333605395839068353
          }
        }
      }
      Objects {
        Id: 16317856468460513630
        Name: "Evil Scary Haunted Wind Howling Loop 01 SFX"
        Transform {
          Location {
            Z: 200
          }
          Rotation {
            Yaw: -1.7075472e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9071545578764586568
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
            Id: 4893056135375132309
          }
          AutoPlay: true
          Repeat: true
          Volume: 0.5
          Falloff: 500
          Radius: 100
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 7986951085662330853
        Name: "NewFolder"
        Transform {
          Location {
            X: 62.4099121
            Y: 3.76797104
            Z: -9.74658203
          }
          Rotation {
            Yaw: 170.588547
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9071545578764586568
        ChildIds: 12737144701231652071
        ChildIds: 9198353839958961188
        ChildIds: 11570181948233459190
        ChildIds: 11506925894053100028
        ChildIds: 10850046419876336309
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
        Id: 12737144701231652071
        Name: "Simple Swing Parent"
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
        ParentId: 7986951085662330853
        UnregisteredParameters {
          Overrides {
            Name: "cs:MaxAmplitude"
            Float: 12
          }
          Overrides {
            Name: "cs:MinAmplitude"
            Float: 6
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
            Id: 4774256623264947271
          }
        }
      }
      Objects {
        Id: 9198353839958961188
        Name: "Plane Triangle - One Sided Isosceles"
        Transform {
          Location {
            X: 3.92786598
            Y: 10.5004148
            Z: 21.097168
          }
          Rotation {
            Pitch: -8.24850464
            Yaw: -87.7365723
            Roll: 74.5970764
          }
          Scale {
            X: 0.2
            Y: 0.7
            Z: 0.2
          }
        }
        ParentId: 7986951085662330853
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.299209714
              G: 0.582
              B: 0.0453959703
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
            Id: 6903792095522628643
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
        Id: 11570181948233459190
        Name: "Plane Triangle - One Sided Isosceles"
        Transform {
          Location {
            X: 8.36040211
            Y: -8.18850231
            Z: 18.7124023
          }
          Rotation {
            Pitch: -23.1761475
            Yaw: -83.3023071
            Roll: 73.3854904
          }
          Scale {
            X: 0.2
            Y: 0.7
            Z: 0.2
          }
        }
        ParentId: 7986951085662330853
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.299209714
              G: 0.582
              B: 0.0453959703
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
            Id: 6903792095522628643
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
        Id: 11506925894053100028
        Name: "Plane Triangle - One Sided Isosceles"
        Transform {
          Location {
            X: -2.12707329
            Y: -29.4995079
            Z: 14.1587868
          }
          Rotation {
            Pitch: -29.3370876
            Yaw: -81.1924591
            Roll: 72.4506683
          }
          Scale {
            X: 0.2
            Y: 0.7
            Z: 0.2
          }
        }
        ParentId: 7986951085662330853
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.299209714
              G: 0.582
              B: 0.0453959703
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
            Id: 6903792095522628643
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
        Id: 10850046419876336309
        Name: "Plane Triangle - One Sided Isosceles"
        Transform {
          Location {
            Y: 31.5937462
            Z: 6.27321863
          }
          Rotation {
            Pitch: 3.36160707
            Yaw: -90.9169
            Roll: 74.7334518
          }
          Scale {
            X: 0.2
            Y: 0.7
            Z: 0.2
          }
        }
        ParentId: 7986951085662330853
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.299209714
              G: 0.582
              B: 0.0453959703
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
            Id: 6903792095522628643
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
        Id: 11512183970349378233
        Name: "Icosahedron"
        Transform {
          Location {
            X: 63.962841
            Y: -86.8548889
            Z: 21.1582031
          }
          Rotation {
            Yaw: 37.6946602
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.6
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8107474354997449738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.60800004
              G: 0.47334829
              B: 0.424384
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
            Id: 6334112895694220850
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 4996379407951847955
        Name: "Prism - 8-Sided Half"
        Transform {
          Location {
            X: 56.2431183
            Y: -76.8639221
            Z: 9.21630859
          }
          Rotation {
            Yaw: 127.694489
          }
          Scale {
            X: 0.480000019
            Y: 0.36
            Z: 0.174674809
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8107474354997449738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.60800004
              G: 0.47334829
              B: 0.424384
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
            Id: 17608613418967438301
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 890297872088522620
        Name: "Plane Pentagon - One Sided"
        Transform {
          Location {
            X: 42.01651
            Y: -77.7932129
            Z: 31.7216797
          }
          Rotation {
            Pitch: -13.3122015
            Yaw: 69.1516418
            Roll: 65.3611679
          }
          Scale {
            X: 0.192201778
            Y: -0.255674392
            Z: 0.192202851
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6577003678095369936
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 0.8
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
            Id: 9934937063829716421
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 4541723034242051886
        Name: "Plane Pentagon - One Sided"
        Transform {
          Location {
            X: 60.8781128
            Y: -63.9743042
            Z: 30.4711914
          }
          Rotation {
            Pitch: 23.0793438
            Yaw: 4.77950191
            Roll: 73.1997223
          }
          Scale {
            X: 0.152013034
            Y: -0.202213824
            Z: 0.152013928
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6577003678095369936
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 0.8
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
            Id: 9934937063829716421
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 1060558706646123356
        Name: "Plane Kite - One Sided"
        Transform {
          Location {
            X: 48.8634644
            Y: -64.8978271
            Z: 25.402832
          }
          Rotation {
            Pitch: -7.82110596
            Yaw: 31.534811
            Roll: 74.7225571
          }
          Scale {
            X: 0.152012616
            Y: -0.146384209
            Z: 0.152013779
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6577003678095369936
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 0.8
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
            Id: 6801809653351036720
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 13549584431837752722
        Name: "Rock Pile 001"
        Transform {
          Location {
            X: 139.723877
            Y: 12.8993378
          }
          Rotation {
            Yaw: -170.242599
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
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
            Id: 3538089502522748061
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 2469187478046301399
        Name: "Cube"
        Transform {
          Location {
            X: 103.45269
            Y: 99.5877
            Z: 107.949707
          }
          Rotation {
            Pitch: 80.2187195
            Yaw: 21.2535686
            Roll: 5.02554167e-06
          }
          Scale {
            X: 0.87582016
            Y: 1.03506029
            Z: 0.318480104
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13694556212767302036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
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
            Id: 17608613418967438301
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
        Id: 10899408795479603485
        Name: "Cube"
        Transform {
          Location {
            X: 84.549118
            Y: 92.2350616
            Z: -9.74511719
          }
          Rotation {
            Pitch: -9.7780714
            Yaw: 21.2535267
            Roll: 2.16589811e-07
          }
          Scale {
            X: 0.318480104
            Y: 1.03506029
            Z: 1.19430041
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13694556212767302036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.2
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
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
            Id: 9232161109027017855
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
        Id: 16178852011672294713
        Name: "Cube"
        Transform {
          Location {
            X: 137.118591
            Y: -113.642288
            Z: 138.075684
          }
          Rotation {
            Pitch: 80.2199097
            Yaw: -37.766
            Roll: 3.01569416e-05
          }
          Scale {
            X: 1.0999999
            Y: 1.30000007
            Z: 0.4
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13694556212767302036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
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
            Id: 17608613418967438301
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
        Id: 7020761473631234777
        Name: "Cube"
        Transform {
          Location {
            X: 116.980171
            Y: -98.0407104
            Z: -9.74511719
          }
          Rotation {
            Pitch: -9.7780714
            Yaw: -37.7660217
            Roll: 2.16589811e-07
          }
          Scale {
            X: 0.4
            Y: 1.30000007
            Z: 1.50000012
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13694556212767302036
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.1
              B: 0.1
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
            Id: 9232161109027017855
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
        Id: 2865975317797146736
        Name: "Pyramid - 4-Sided Truncated"
        Transform {
          Location {
            X: 18.3623505
            Y: 153.179977
            Z: 121.953613
          }
          Rotation {
            Pitch: 18.8207073
            Yaw: -82.069458
            Roll: 175.007599
          }
          Scale {
            X: 0.102806717
            Y: 0.102806717
            Z: 0.858727336
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12446131267530965574
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.2
              G: 0.2
              B: 0.2
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:color"
            Color {
              R: 0.0447589979
              G: 0.0840553939
              B: 0.143
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.1
              G: 0.0413333289
              B: 0.02
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
            Id: 5245202911989870293
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
        Id: 15843342820266964702
        Name: "Prism - 8-Sided Half"
        Transform {
          Location {
            X: 24.3418427
            Y: 139.149338
            Z: 78.7602539
          }
          Rotation {
            Pitch: -70.5514374
            Yaw: -66.9185944
            Roll: 75.6766586
          }
          Scale {
            X: 2.41083
            Y: 0.161814645
            Z: 0.0494057648
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12446131267530965574
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.2
              G: 0.2
              B: 0.2
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:color"
            Color {
              R: 0.0447589979
              G: 0.0840553939
              B: 0.143
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.2
              G: 0.2
              B: 0.2
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
            Id: 17608613418967438301
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
        Id: 1614648346409298653
        Name: "Prism - 8-Sided Half"
        Transform {
          Location {
            X: 24.3418427
            Y: 139.149338
            Z: 78.7602539
          }
          Rotation {
            Pitch: 70.5514603
            Yaw: 113.081207
            Roll: 104.32312
          }
          Scale {
            X: 0.201509342
            Y: 0.427211195
            Z: 0.117705084
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2555807082249945326
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 12446131267530965574
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:utile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:vtile"
            Float: 24
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.2
              G: 0.2
              B: 0.2
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim2:color"
            Color {
              R: 0.0447589979
              G: 0.0840553939
              B: 0.143
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.100000024
              G: 0.25
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
            Id: 17608613418967438301
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
        Id: 11013087303102016404
        Name: "Diamond"
        Transform {
          Location {
            X: 123.981262
            Y: 104.469467
            Z: 160.939941
          }
          Rotation {
            Pitch: -26.2482853
            Yaw: -164.382446
            Roll: 1.42789668e-06
          }
          Scale {
            X: 0.504684865
            Y: 0.611438513
            Z: 1.09441376
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8107474354997449738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00400000066
              B: 0.01
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
            Id: 11079778742113513846
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 1543380571226900774
        Name: "Pyramid - 3-Sided"
        Transform {
          Location {
            X: 118.21051
            Y: 102.85601
            Z: 144.760742
          }
          Rotation {
            Yaw: -74.3822632
            Roll: -26.2465172
          }
          Scale {
            X: 0.470772356
            Y: 0.235386178
            Z: 0.156924114
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8107474354997449738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.567000031
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
            Id: 18072615611267333407
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 12810797909048297843
        Name: "Diamond"
        Transform {
          Location {
            X: 91.1099167
            Y: 95.2810211
            Z: 195.927734
          }
          Rotation {
            Pitch: -64.9298172
            Yaw: 15.6179285
            Roll: -179.999985
          }
          Scale {
            X: 0.161716804
            Y: 0.267274708
            Z: 0.254144043
          }
        }
        ParentId: 9071545578764586568
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
            Id: 11079778742113513846
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
        Id: 5720691103572921123
        Name: "Diamond"
        Transform {
          Location {
            X: 98.5120087
            Y: 97.3496704
            Z: 194.660156
          }
          Rotation {
            Pitch: -58.8369141
            Yaw: 15.6179152
            Roll: -179.999985
          }
          Scale {
            X: 0.362365186
            Y: 0.38394323
            Z: 0.655200779
          }
        }
        ParentId: 9071545578764586568
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8107474354997449738
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.00400000066
              B: 0.01
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
            Id: 11079778742113513846
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
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
      Id: 4893056135375132309
      Name: "Evil Scary Haunted Wind Howling Loop 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_evil_scary_haunted_wind_howling_loop_01_Cue_ref"
      }
    }
    Assets {
      Id: 6903792095522628643
      Name: "Plane Triangle - One Sided Isosceles"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_triangle_001"
      }
    }
    Assets {
      Id: 6334112895694220850
      Name: "Icosahedron"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_icosahedron_001"
      }
    }
    Assets {
      Id: 17608613418967438301
      Name: "Prism - 8-Sided Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half_octagon_001"
      }
    }
    Assets {
      Id: 9934937063829716421
      Name: "Plane Pentagon - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_pentagon_001"
      }
    }
    Assets {
      Id: 6577003678095369936
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 6801809653351036720
      Name: "Plane Kite - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_kite_001"
      }
    }
    Assets {
      Id: 3538089502522748061
      Name: "Rock Pile 001"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rocks_small_001"
      }
    }
    Assets {
      Id: 13694556212767302036
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
    Assets {
      Id: 9232161109027017855
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 5245202911989870293
      Name: "Pyramid - 4-Sided Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_truncated_001"
      }
    }
    Assets {
      Id: 12446131267530965574
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 11079778742113513846
      Name: "Diamond"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_001"
      }
    }
    Assets {
      Id: 18072615611267333407
      Name: "Pyramid - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_threesided_001"
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
}
