//
//
//

import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/types/machine.dart';
import 'package:sample_app/types/machine_id.dart';
import 'package:sample_app/types/reel.dart';
import 'package:sample_app/types/reel_id.dart';
import 'package:sample_app/types/symbol_id.dart';

final List<MachineId> machineIds = [
  MachineId.classic,
];

final List<Reel> reels = [
  Reel(
    id: ReelId.classicL.rawValue,
    symbols: [
      SymbolId.luckySeven.rawValue,
      SymbolId.cherry.rawValue,
      SymbolId.clover.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.horseshoe.rawValue,
      SymbolId.cherry.rawValue,
      SymbolId.clover.rawValue,
      SymbolId.bell.rawValue,
    ],
  ),
  Reel(
    id: ReelId.classicC.rawValue,
    symbols: [
      SymbolId.clover.rawValue,
      SymbolId.luckySeven.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.cherry.rawValue,
      SymbolId.clover.rawValue,
      SymbolId.horseshoe.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.cherry.rawValue,
    ],
  ),
  Reel(
    id: ReelId.classicR.rawValue,
    symbols: [
      SymbolId.cherry.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.horseshoe.rawValue,
      SymbolId.clover.rawValue,
      SymbolId.cherry.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.horseshoe.rawValue,
      SymbolId.luckySeven.rawValue,
    ],
  ),
];

final List<Machine> machines = [
  Machine(
    id: MachineId.classic.rawValue,
    name: "クラシック",
    miniImageUrl: "assets://" + ImageNames.slotMachineClassicFlat,
    accentColorHex: 'FF0800',
    baseColorHex: '222222',
    borderColorHex: '007700',
    reels: [
      ReelId.classicL.rawValue,
      ReelId.classicC.rawValue,
      ReelId.classicR.rawValue,
    ],
    spinCost: 20,
    memberSymbols: [
      SymbolId.cherry.rawValue,
      SymbolId.bell.rawValue,
      SymbolId.clover.rawValue,
      SymbolId.cherry.rawValue,
      SymbolId.horseshoe.rawValue,
      SymbolId.luckySeven.rawValue,
    ],
  ),
];
