import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//Artisan Worktable Tweaks
	//Blacksmith
val plateIngots = {
    <thermalfoundation:material:33> : <ore:ingotGold>,
    <thermalfoundation:material:320> : <ore:ingotCopper>,
    <thermalfoundation:material:321> : <ore:ingotTin>,
    <thermalfoundation:material:322> : <ore:ingotSilver>,
    <thermalfoundation:material:323> : <ore:ingotLead>,
    <thermalfoundation:material:324> : <ore:ingotAluminum>,
    <thermalfoundation:material:325> : <ore:ingotNickel>,
    <thermalfoundation:material:326> : <ore:ingotPlatinum>,
    <thermalfoundation:material:327> : <ore:ingotIridium>,
    <thermalfoundation:material:328> : <ore:ingotMithril>,
    <thermalfoundation:material:352> : <ore:ingotSteel>,
    <thermalfoundation:material:353> : <ore:ingotElectrum>,
    <thermalfoundation:material:354> : <ore:ingotInvar>,
    <thermalfoundation:material:355> : <ore:ingotBronze>,
    <thermalfoundation:material:356> : <ore:Constantan>,
    <thermalfoundation:material:357> : <ore:ingotSignalum>,
    <thermalfoundation:material:358> : <ore:ingotLumium>,
    <thermalfoundation:material:359> : <ore:ingotEnderium>
} as IIngredient[IItemStack];

val plateRecipeBuilder = {} as IRecipeBuilder[IItemStack];

for plate, ingot in plateIngots {
    plateRecipeBuilder[plate] = Worktable.createRecipeBuilder("blacksmith") as IRecipeBuilder;
    plateRecipeBuilder[plate].setShaped([
        [ingot],
        [ingot],
        [ingot]
    ])
    .addTool(<ore:blacksmiths_hammer>, 5)
    .addOutput(plate)
    .create();
}

mods.artisanworktables.Worktable.addRecipeShaped("blacksmith", <thermalexpansion:frame>, <ore:blacksmiths_hammer>, 20, false, [[<ore:ingotSteel>, <buildcraftfactory:tank>, <ore:ingotSteel>], [<buildcraftfactory:tank>, <thermalfoundation:material:288>, <buildcraftfactory:tank>], [<ore:ingotSteel>, <buildcraftfactory:tank>, <ore:ingotSteel>]]);

//Changed Recipes
recipes.addShaped(<thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}), [[<betterwithmods:material:27>, <betterwithmods:material:27>, <betterwithmods:material:27>], [<immersiveengineering:stone_decoration:1>, <thermalexpansion:frame>, <immersiveengineering:stone_decoration:1>], [<thermalfoundation:material:288>, <thermalfoundation:material:513>, <thermalfoundation:material:288>]]);
recipes.addShaped(<thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}), [[<minecraft:piston>, <minecraft:piston>, <minecraft:piston>], [<betterwithmods:single_machine>, <thermalexpansion:frame>, <betterwithmods:single_machine>], [<thermalfoundation:material:288>, <thermalfoundation:material:513>, <thermalfoundation:material:288>]]);
recipes.addShaped(<thermalfoundation:material:513>, [[<immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>, <betterwithmods:material:34>], [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>], [<betterwithmods:material:34>, <immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>]]);
recipes.addShaped(<thermalfoundation:material:515>, [[<betterwithmods:material:34>, <immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>], [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>], [<immersiveengineering:wirecoil:5>, <immersiveengineering:wirecoil:5>, <betterwithmods:material:34>]]);
recipes.addShaped(<thermalfoundation:material:514>, [[<immersiveengineering:wirecoil:5>, <betterwithmods:material:34>, <immersiveengineering:wirecoil:5>], [<immersiveengineering:wirecoil:5>, <immersiveengineering:connector:12>, <immersiveengineering:wirecoil:5>], [<immersiveengineering:wirecoil:5>, <betterwithmods:material:34>, <immersiveengineering:wirecoil:5>]]);
recipes.addShaped(<thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}), [[<betterwithmods:saw>, <thermalfoundation:material:288>, <betterwithmods:saw>], [<betterwithmods:material:9>, <thermalexpansion:frame>, <betterwithmods:material:9>], [<thermalfoundation:material:288>, <thermalfoundation:material:513>, <thermalfoundation:material:288>]]);
recipes.addShaped(<thermalexpansion:frame:128>, [[<immersiveengineering:sheetmetal:2>, <minecraft:glass_pane>, <immersiveengineering:sheetmetal:2>], [<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<immersiveengineering:sheetmetal:2>, <minecraft:glass_pane>, <immersiveengineering:sheetmetal:2>]]);
recipes.addShaped(<thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000}), [[<betterwithmods:material:34>, <ore:blockRedstone>, <betterwithmods:material:34>], [<immersiveengineering:sheetmetal:2>, <thermalexpansion:frame:128>, <immersiveengineering:sheetmetal:2>], [<betterwithmods:material:34>, <thermalfoundation:material:515>, <betterwithmods:material:34>]]);
recipes.addShaped(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}), [[<betterwithmods:material:27>, <thermalfoundation:material:514>, <betterwithmods:material:27>], [<ore:ingotSteel>, <thermalexpansion:frame>, <ore:ingotSteel>], [<thermalfoundation:material:288>, <buildcraftfactory:tank>, <thermalfoundation:material:288>]]);
recipes.addShaped(<thermaldynamics:duct_0> * 6, [[<betterwithmods:material:34>, <minecraft:redstone>, <betterwithmods:material:34>], [<immersiveengineering:sheetmetal:2>, <betterwithmods:light>, <immersiveengineering:sheetmetal:2>], [<betterwithmods:material:34>, <minecraft:redstone>, <betterwithmods:material:34>]]);

//Removed Recipes (currently locked)
recipes.remove(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:4>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:7>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 2, 3, 3, 3, 3] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:9>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:10>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:11>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:12>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:13>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:14>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:machine:15>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:device>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [0, 1, 0, 0, 0, 0] as byte[] as byte[]}));
recipes.remove(<thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:2>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:4>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));

//Removed Recipes (non modified recipes)
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:machine>);
recipes.remove(<thermalexpansion:machine:1>);
recipes.remove(<thermalfoundation:material:513>);
recipes.remove(<thermalfoundation:material:515>);
recipes.remove(<thermalfoundation:material:514>);
recipes.remove(<thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}));
recipes.remove(<thermalexpansion:frame:128>);
recipes.remove(<thermalexpansion:cell>.withTag({Recv: 1000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [2, 1, 1, 1, 1, 1] as byte[] as byte[], Level: 0 as byte, Send: 1000}));
recipes.remove(<thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Level: 0 as byte}));
recipes.remove(<thermaldynamics:duct_0>);


