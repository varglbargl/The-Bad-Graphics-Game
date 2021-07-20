Assets {
  Id: 757257612037628633
  Name: "Rat"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5022282794013977737
      Objects {
        Id: 5022282794013977737
        Name: "Good Graphics Rat"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11449705317125433992
        ChildIds: 5397401009386316246
        ChildIds: 11008119447648071771
        WantsNetworking: true
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
          IsGroup: true
        }
      }
      Objects {
        Id: 11449705317125433992
        Name: "Hitbox"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 1.99999988
            Y: 1
            Z: 1
          }
        }
        ParentId: 5022282794013977737
        WantsNetworking: true
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 5397401009386316246
        Name: "Enemy Rat Server"
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
        ParentId: 5022282794013977737
        UnregisteredParameters {
          Overrides {
            Name: "cs:Hitbox"
            ObjectReference {
              SubObjectId: 11449705317125433992
            }
          }
        }
        WantsNetworking: true
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
            Id: 13057360465055397463
          }
        }
      }
      Objects {
        Id: 11008119447648071771
        Name: "ClientContext"
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
        ParentId: 5022282794013977737
        ChildIds: 6736442114927474438
        ChildIds: 3121278835433137365
        ChildIds: 3382535568621602573
        ChildIds: 6483310414203425976
        ChildIds: 5377259743583699659
        ChildIds: 2418635905572884072
        ChildIds: 6134363790238950534
        ChildIds: 415137078779553465
        ChildIds: 16879480084773825055
        ChildIds: 1519846685560538716
        ChildIds: 3183151549379016732
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
        NetworkContext {
        }
      }
      Objects {
        Id: 6736442114927474438
        Name: "Enemy Rat Client"
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
        ParentId: 11008119447648071771
        UnregisteredParameters {
          Overrides {
            Name: "cs:AnimatedMesh"
            ObjectReference {
              SubObjectId: 3382535568621602573
            }
          }
          Overrides {
            Name: "cs:AttackAnimation"
            String: "unarmed_bite"
          }
          Overrides {
            Name: "cs:DieAnimation"
            String: "unarmed_death"
          }
          Overrides {
            Name: "cs:RunAnimation"
            String: "unarmed_run_forward"
          }
          Overrides {
            Name: "cs:WalkAnimation"
            String: "unarmed_walk_forward"
          }
          Overrides {
            Name: "cs:IdleAnimation"
            String: "unarmed_idle_relaxed"
          }
          Overrides {
            Name: "cs:ReadyAnimation"
            String: "unarmed_idle_ready"
          }
          Overrides {
            Name: "cs:Nameplate"
            ObjectReference {
              SubObjectId: 2931936198307561319
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
        Script {
          ScriptAsset {
            Id: 12794025021009957930
          }
        }
      }
      Objects {
        Id: 3121278835433137365
        Name: "Simple Attach to Mesh"
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
        ParentId: 11008119447648071771
        UnregisteredParameters {
          Overrides {
            Name: "cs:Mesh"
            ObjectReference {
              SubObjectId: 3382535568621602573
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
        Script {
          ScriptAsset {
            Id: 13924186888309160458
          }
        }
      }
      Objects {
        Id: 3382535568621602573
        Name: "Fox Mob"
        Transform {
          Location {
            Z: 31.9712982
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1915461248412394696
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1915461248412394696
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7548556405676596943
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          AnimatedMesh {
            AnimationStancePlaybackRate: 1
            AnimationStanceShouldLoop: true
            AnimationPlaybackRateMultiplier: 1.25
            PlayOnStartAnimation {
              PlaybackRate: 1
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
            SkinnedMeshes {
            }
          }
        }
      }
      Objects {
        Id: 6483310414203425976
        Name: "root"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 13786495613638375397
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 13786495613638375397
        Name: "Nameplate"
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
        ParentId: 6483310414203425976
        ChildIds: 2931936198307561319
        ChildIds: 5163353464975266048
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
          FilePartitionName: "Nameplate"
        }
      }
      Objects {
        Id: 2931936198307561319
        Name: "World Text"
        Transform {
          Location {
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 13786495613638375397
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
        Text {
          Text: "GOOD GRAPHICS RAT"
          FontAsset {
          }
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 5163353464975266048
        Name: "Simple Look At Local View"
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
        ParentId: 13786495613638375397
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
        Id: 5377259743583699659
        Name: "neck"
        Transform {
          Location {
            X: 46.1152496
            Y: 4.26404586e-06
            Z: 52.3348083
          }
          Rotation {
            Pitch: -77.6144714
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 8825939154462925375
        ChildIds: 121155866097478279
        ChildIds: 16982332319069031892
        ChildIds: 10994359704842484498
        ChildIds: 5867714545386222407
        ChildIds: 14417622643124703445
        ChildIds: 17191220234743880576
        ChildIds: 2212369313831163741
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8825939154462925375
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: 4.67820168
            Y: 0.000462849945
            Z: -3.71881104
          }
          Rotation {
            Yaw: 90
            Roll: -10
          }
          Scale {
            X: 0.400000036
            Y: 0.400000036
            Z: 0.400000036
          }
        }
        ParentId: 5377259743583699659
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 121155866097478279
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: -8.55725861
            Y: 13.3342667
            Z: 9.2749176
          }
          Rotation {
            Pitch: 5.032722
            Yaw: 110.120636
            Roll: -13.0543823
          }
          Scale {
            X: 0.200000212
            Y: 0.200000212
            Z: -0.0663946718
          }
        }
        ParentId: 5377259743583699659
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16982332319069031892
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: -6.14051056
            Y: -13.3324871
            Z: 8.6102
          }
          Rotation {
            Pitch: -3.60632324
            Yaw: 70.0260086
            Roll: -5.50253296
          }
          Scale {
            X: 0.200000212
            Y: 0.200000212
            Z: -0.0663946718
          }
        }
        ParentId: 5377259743583699659
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 10994359704842484498
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 7.59237957
            Y: 0.00037352246
            Z: 12.5784664
          }
          Rotation {
            Yaw: 90
            Roll: -10
          }
          Scale {
            X: 0.331681848
            Y: 0.186426356
            Z: 0.272293359
          }
        }
        ParentId: 5377259743583699659
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7786628685992187204
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5867714545386222407
        Name: "Diamond - Polished"
        Transform {
          Location {
            X: 11.045126
            Y: 0.000319798797
            Z: 32.3908539
          }
          Rotation {
            Pitch: 3.87990928
            Yaw: 105.865204
            Roll: -12.5553894
          }
          Scale {
            X: 0.133361652
            Y: 0.133361652
            Z: 0.133361652
          }
        }
        ParentId: 5377259743583699659
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 7786628685992187204
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14417622643124703445
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: 4.60144424
            Y: 0.000452478736
            Z: -4.15412712
          }
          Rotation {
            Yaw: 90
            Roll: -10
          }
          Scale {
            X: 0.43565464
            Y: 0.435654581
            Z: 0.423847049
          }
        }
        ParentId: 5377259743583699659
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17191220234743880576
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: -8.5022583
            Y: 13.382515
            Z: 9.52505493
          }
          Rotation {
            Pitch: 5.03268099
            Yaw: 110.120506
            Roll: -13.0543213
          }
          Scale {
            X: 0.235163227
            Y: 0.235163212
            Z: -0.0793438628
          }
        }
        ParentId: 5377259743583699659
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2212369313831163741
        Name: "Pyramid - 5-Sided Polished"
        Transform {
          Location {
            X: -6.08548737
            Y: -13.2842331
            Z: 8.86039734
          }
          Rotation {
            Pitch: -3.60638428
            Yaw: 70.0259857
            Roll: -5.50247192
          }
          Scale {
            X: 0.235163227
            Y: 0.235163212
            Z: -0.0793438628
          }
        }
        ParentId: 5377259743583699659
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4404884599107308063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2418635905572884072
        Name: "left_hip"
        Transform {
          Location {
            X: -30.8885365
            Y: -11.4255867
            Z: 50.0704651
          }
          Rotation {
            Pitch: -15.4539185
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 12175355446266334086
        ChildIds: 2641189752997635369
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12175355446266334086
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -5.0862112
            Y: -10.4769611
            Z: -31.6164055
          }
          Rotation {
            Pitch: -10
            Roll: 10
          }
          Scale {
            X: 0.157228753
            Y: 0.123554766
            Z: 0.308880031
          }
        }
        ParentId: 2418635905572884072
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2641189752997635369
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -5.17647314
            Y: -10.582346
            Z: -33.3893204
          }
          Rotation {
            Pitch: -10
            Yaw: -3.05175781e-05
            Roll: 10.000021
          }
          Scale {
            X: 0.200180411
            Y: 0.157307416
            Z: 0.393260092
          }
        }
        ParentId: 2418635905572884072
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 6134363790238950534
        Name: "right_hip"
        Transform {
          Location {
            X: -30.8885937
            Y: 11.4254799
            Z: 50.0704651
          }
          Rotation {
            Pitch: -15.4539185
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 15743404904012526255
        ChildIds: 14259662359361031206
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 15743404904012526255
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -6.75044394
            Y: 9.16266251
            Z: -32.6188049
          }
          Rotation {
            Pitch: 9.51464462
            Yaw: 86.3944168
            Roll: -10.4630432
          }
          Scale {
            X: 0.157228753
            Y: 0.123554766
            Z: 0.308880031
          }
        }
        ParentId: 6134363790238950534
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14259662359361031206
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -6.84072638
            Y: 9.05728817
            Z: -34.3916397
          }
          Rotation {
            Pitch: 9.51464462
            Yaw: 86.3944
            Roll: -10.4630432
          }
          Scale {
            X: 0.200180411
            Y: 0.157307416
            Z: 0.393260092
          }
        }
        ParentId: 6134363790238950534
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 415137078779553465
        Name: "left_shoulder"
        Transform {
          Location {
            X: 36.7420769
            Y: -12.1801157
            Z: 46.9698944
          }
          Rotation {
            Pitch: -10.7944946
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 16493672704921518073
        ChildIds: 11541190853513288523
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 16493672704921518073
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: 0.8487854
            Y: -10.39956
            Z: -30.455658
          }
          Rotation {
            Pitch: 23.7825394
            Yaw: -32.7948608
            Roll: 6.43645763
          }
          Scale {
            X: 0.135822341
            Y: 0.13582252
            Z: 0.304660618
          }
        }
        ParentId: 415137078779553465
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11541190853513288523
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: 1.0816406
            Y: -10.5678234
            Z: -31.6019039
          }
          Rotation {
            Pitch: 23.7825394
            Yaw: -32.7948914
            Roll: 6.43644571
          }
          Scale {
            X: 0.165666446
            Y: 0.165666565
            Z: 0.371603578
          }
        }
        ParentId: 415137078779553465
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16879480084773825055
        Name: "right_shoulder"
        Transform {
          Location {
            X: 36.742054
            Y: 12.1799612
            Z: 46.9698944
          }
          Rotation {
            Pitch: -10.7944946
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 6878946638624220035
        ChildIds: 5251258028689580085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6878946638624220035
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -0.392407745
            Y: 6.86611748
            Z: -31.2816982
          }
          Rotation {
            Pitch: 15.3962221
            Yaw: -0.84765625
            Roll: -20.1581116
          }
          Scale {
            X: 0.135822341
            Y: 0.13582252
            Z: 0.304660618
          }
        }
        ParentId: 16879480084773825055
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5251258028689580085
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: -0.183422729
            Y: 7.07106495
            Z: -32.4265862
          }
          Rotation {
            Pitch: 15.3962088
            Yaw: -0.847686768
            Roll: -20.1581726
          }
          Scale {
            X: 0.165666446
            Y: 0.165666565
            Z: 0.371603578
          }
        }
        ParentId: 16879480084773825055
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1519846685560538716
        Name: "spine"
        Transform {
          Location {
            X: 3.25872612
            Y: -7.76941192e-07
            Z: 52.4359283
          }
          Rotation {
            Pitch: -88.8066101
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 2953749573594254391
        ChildIds: 16260746562867244901
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2953749573594254391
        Name: "Dodecahedron - Polished"
        Transform {
          Location {
            X: 3.57187128
            Y: -1.07925272
            Z: -8.06479931
          }
          Rotation {
            Yaw: 90
            Roll: -5
          }
          Scale {
            X: 0.5
            Y: 0.400000036
            Z: 0.900000036
          }
        }
        ParentId: 1519846685560538716
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
              R: 0.132
              G: 0.0351999961
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 9433587823853778263
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16260746562867244901
        Name: "Dodecahedron - Polished"
        Transform {
          Location {
            X: 3.57187128
            Y: -1.07925272
            Z: -8.06479931
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 90
            Roll: -5
          }
          Scale {
            X: 0.530729532
            Y: 0.424583673
            Z: 0.955312967
          }
        }
        ParentId: 1519846685560538716
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 9433587823853778263
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3183151549379016732
        Name: "tail_1"
        Transform {
          Location {
            X: -52.088623
            Y: -2.83988084e-06
            Z: 60.812912
          }
          Rotation {
            Pitch: -50.9510498
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11008119447648071771
        ChildIds: 5775947036941204068
        ChildIds: 16787972623692770455
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5775947036941204068
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: 5.3385191
            Y: 3.01996874e-06
            Z: 2.20581436
          }
          Rotation {
            Pitch: 159.845276
            Yaw: 1.91146851
            Roll: 1.10516357
          }
          Scale {
            X: 0.100000009
            Y: 0.100000009
            Z: 0.800000072
          }
        }
        ParentId: 3183151549379016732
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
              R: 0.085
              G: 0.0235662498
              B: 0.00977499597
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16787972623692770455
        Name: "Pyramid - 3-Sided Polished"
        Transform {
          Location {
            X: 5.3385191
            Y: 3.01996874e-06
            Z: 2.20581436
          }
          Rotation {
            Pitch: 20.154562
            Yaw: -178.088547
            Roll: -178.894836
          }
          Scale {
            X: 0.144982144
            Y: 0.144982487
            Z: 0.999573588
          }
        }
        ParentId: 3183151549379016732
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16986353429576899497
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13501766036416480354
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 7548556405676596943
      Name: "Fox Mob"
      PlatformAssetType: 17
      PrimaryAsset {
        AssetType: "AnimatedMeshAssetRef"
        AssetId: "npc_fox_default_basic_001_ref"
      }
    }
    Assets {
      Id: 1915461248412394696
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    Assets {
      Id: 4404884599107308063
      Name: "Pyramid - 5-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_fivesided_hq_001"
      }
    }
    Assets {
      Id: 7786628685992187204
      Name: "Diamond - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_diamond_hq_001"
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
    Assets {
      Id: 13501766036416480354
      Name: "Pyramid - 3-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_threesided_hq_001"
      }
    }
    Assets {
      Id: 9433587823853778263
      Name: "Dodecahedron - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_dodecahedron_hq_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
}
