// MGS3 Load Remover
// Based on the Resident Evil/Biohazard: Code: Veronica Auto Splitter
// https://github.com/kapdap/re-cvx-autosplitter

state("pcsx2") {}
state("rpcs3") {}

startup 
{
    print("Loading script...");

    // Swaps 2 byte values
    vars.SwapBytes = (Func<ushort, ushort>)((value) => {
        int b1 = (value >> 0) & 0xff;
        int b2 = (value >> 8) & 0xff;

        return (ushort) (b1 << 8 | b2 << 0);
    });

    // Swaps 4 byte values
    vars.SwapBytesInt = (Func<uint, uint>)((value) => {
        return ((value & 0x000000ff) << 24) +
            ((value & 0x0000ff00) << 8) +
            ((value & 0x00ff0000) >> 8) +
            ((value & 0xff000000) >> 24);
    });

    settings.Add("areas", true, "Areas (Split when you leave the area)");
    {
        settings.Add("v001a", true, "Dremuchij South (VM)", "areas");
        settings.Add("v003a", true, "Dremuchij Swampland (VM)", "areas");
        settings.Add("v004a", true, "Dremuchij North (VM)", "areas");
        settings.Add("v005a", true, "Dolinovodno (VM)", "areas");
        settings.Add("v006a", true, "Rassvet (VM)", "areas");
        settings.Add("v006b", true, "Rassvet - After Sokolov (VM)", "areas");
        settings.Add("v007a", true, "Dolinovodno Riverbank", "areas");
        settings.Add("s001a", true, "Dremuchij South", "areas");
        settings.Add("s002a", true, "Dremuchij East", "areas");
        settings.Add("s003a", true, "Dremuchij Swampland", "areas");
        settings.Add("s004a", true, "Dremuchij North", "areas");
        settings.Add("s005a", true, "Dolinovodno", "areas");
        settings.Add("s006a", true, "Rassvet", "areas");
        settings.Add("s012a", true, "Chyornyj Prud", "areas");
        settings.Add("s021a", true, "Bolshaya Past South", "areas");
        settings.Add("s022a", true, "Bolshaya Past Base", "areas");
        settings.Add("s023a", true, "Bolshaya Past Crevice", "areas");
        settings.Add("s031a", true, "Chyornaya Peschera Cave Branch", "areas");
        settings.Add("s032a", true, "Chyornaya Peschera Cave", "areas");
        settings.Add("s033a", true, "Chyornaya Peschera Cave Entrance", "areas");
        settings.Add("s041a", true, "Ponizovje South", "areas");
        settings.Add("s042a", true, "Ponizovje West", "areas");
        settings.Add("s043a", true, "Ponizovje Warehouse: Exterior", "areas");
        settings.Add("s044a", true, "Ponizovje Warehouse", "areas");
        settings.Add("s045a", true, "Svyatogornyj South", "areas");
        settings.Add("s051a", true, "Graniny Gorki South", "areas");
        settings.Add("s052a", true, "Graniny Gorki Lab Exterior: Outside Walls", "areas");
        settings.Add("s052b", true, "Graniny Gorki Lab Exterior: Inside Walls", "areas");
        settings.Add("s053a", true, "Graniny Gorki Lab 1F", "areas");
        settings.Add("s055a", true, "Graniny Gorki Lab B1 East", "areas");
        settings.Add("s056a", true, "Graniny Gorki Lab B1 West", "areas");
        settings.Add("s061a", true, "Svyatogornyj West", "areas");
        settings.Add("s062a", true, "Svyatogornyj East", "areas");
        settings.Add("s064a", true, "Sokrovenno South", "areas");
        settings.Add("s064b", true, "Sokrovenno South (Ocelot Unit)", "areas");
        settings.Add("s065a", true, "Sokrovenno North", "areas");
        settings.Add("s065b", true, "Sokrovenno North (Ocelot Unit)", "areas");
        settings.Add("s066a", true, "Krasnogorje Tunnel", "areas");
        settings.Add("s071a", true, "Krasnogorje Mountain Base", "areas");
        settings.Add("s072a", true, "Krasnogorje Mountainside (Flying Platforms)", "areas");
        settings.Add("s072b", true, "Krasnogorje Mountainside (Hind)", "areas");
        settings.Add("s073a", true, "Krasnogorje Mountaintop", "areas");
        settings.Add("s073b", true, "Krasnogorje Mountaintop (Sunset)", "areas");
        settings.Add("s074a", true, "Krasnogorje Mountaintop Ruins", "areas");
        settings.Add("s075a", true, "Krasnogorje Mountaintop: Behind Ruins", "areas");
        settings.Add("s081a", true, "Groznyj Grad Underground Tunnel", "areas");
        settings.Add("s091a", true, "Groznyj Grad Southwest", "areas");
        settings.Add("s091b", true, "Groznyj Grad Southwest (After torture)", "areas");
        settings.Add("s091c", true, "Groznyj Grad Southwest (After waterfall)", "areas");
        settings.Add("s092a", true, "Groznyj Grad Northwest", "areas");
        settings.Add("s092b", true, "Groznyj Grad Northwest (After torture)", "areas");
        settings.Add("s092c", true, "Groznyj Grad Northwest (After waterfall)", "areas");
        settings.Add("s093a", true, "Groznyj Grad Northeast", "areas");
        settings.Add("s093b", true, "Groznyj Grad Northeast (After torture)", "areas");
        settings.Add("s093c", true, "Groznyj Grad Northeast (After waterfall)", "areas");
        settings.Add("s094a", true, "Groznyj Grad Southeast", "areas");
        settings.Add("s094b", true, "Groznyj Grad Southeast (After torture)", "areas");
        settings.Add("s094c", true, "Groznyj Grad Southeast (After waterfall)", "areas");
        settings.Add("s101a", true, "Groznyj Grad Weapons Lab: East Wing", "areas");
        settings.Add("s101b", true, "Groznyj Grad Weapons Lab: East Wing (After Raikov)", "areas");
        settings.Add("s111a", true, "Groznyj Grad Weapons Lab: West Wing Corridor", "areas");
        settings.Add("s112a", true, "Groznyj Grad Torture Room", "areas");
        settings.Add("s113a", true, "Groznyj Grad Sewers", "areas");
        settings.Add("s121a", true, "Groznyj Grad Weapons Lab: Main Wing", "areas");
        settings.Add("s122a", true, "Groznyj Grad Weapons Lab: Main Wing B1", "areas");
        settings.Add("s141a", true, "The Sorrow Arena", "areas");
        settings.Add("s151a", true, "Tikhogornyj", "areas");
        settings.Add("s152a", true, "Tikhogornyj: Behind Waterfall", "areas");
        settings.Add("s161a", true, "Groznyj Grad", "areas");
        settings.Add("s162a", true, "Groznyj Grad Runway South", "areas");
        settings.Add("s163a", true, "Groznyj Grad Runway", "areas");
        settings.Add("s171a", true, "Groznyj Grad Rail Bridge", "areas");
        settings.Add("s181a", true, "Groznyj Grad Rail Bridge North", "areas");
        settings.Add("s182a", true, "Lazorevo South", "areas");
        settings.Add("s183a", true, "Lazorevo North", "areas");
        settings.Add("s191a", true, "Zaozyorje West", "areas");
        settings.Add("s191b", true, "Zaozyorje West (Pursuit)", "areas");
        settings.Add("s192a", true, "Zaozyorje East", "areas");
        settings.Add("s201a", true, "Rokovoj Bereg", "areas");
        settings.Add("s211a", true, "WIG: Interior", "areas");
    }
}

init
{
    print("Process loaded!!");

    vars.gameProcess = String.Empty; // Used to detect when the process has changed
    vars.productCode = String.Empty; // Used to detect when the game release has changed
    vars.basePointer = IntPtr.Zero; // Emulator virtual memory base pointer
    vars.isBigEndian = false; // Console uses big endian (PS3)

    // Sets memory pointers for the detected game release
    vars.UpdatePointers = (Action) (() => {
        switch ((string)vars.productCode)
        {
            case "SLUS_213.59": // [PS2] Subsistence NTSC-U
                vars.loadFlagAddress = 0x0020C16C;
                vars.areaCodeAddress = 0x001D5AC0;
                vars.ocelotSpeechOverFlagAddress = 0x0020C168;
                break;
            case "SLES_820.42": // [PS2] Subsistence PAL-E-F
                vars.loadFlagAddress = 0x0020CE6C;
                vars.areaCodeAddress = 0x001D67A0;
                vars.ocelotSpeechOverFlagAddress = 0x0020CE68;
                break;
            case "NPUB30610": // [PS3] HDC NTSC-U
                vars.loadFlagAddress = 0x01B8F32C;
                vars.areaCodeAddress = 0x011FCD30;
                vars.ocelotSpeechOverFlagAddress = 0x01B8F328;
                break;
        }
    });

    // Detects if the process has changed
    vars.UpdateProcess = (Action) (() => {
        // Update process name if application has changed
        if (vars.gameProcess != game.ProcessName)
        {
            vars.gameProcess = game.ProcessName;

            // Set emulator edianess
            switch ((string)vars.gameProcess.ToLower())
            {
                case "pcsx2":
                    vars.isBigEndian = false;
                    break;

                default: // rpcs3
                    vars.isBigEndian = true;
                    break;
            }
        }
    });

    // Set emulator base pointer
    vars.UpdatePointer = (Action) (() => {
        switch ((string)vars.gameProcess.ToLower())
        {
            case "pcsx2":
                vars.basePointer = 0x20000000;
                break;

            default: // rpcs3
                vars.basePointer = 0x300000000;
                break;
        }
    });

    // Detects if the game release has changed
    vars.UpdateProduct = (Action) (() => {
        string productCode;

        // Read game product code from memory
        switch ((string)vars.gameProcess.ToLower())
        {
            case "pcsx2":
                productCode = memory.ReadString(new IntPtr(vars.basePointer + 0x00015B90), 11);
                break;

            default: // rpcs3
                productCode = memory.ReadString(new IntPtr(vars.basePointer + 0x20010251), 9);
                break;
        }

        // Update product code if the game release has changed
        if (vars.productCode != productCode)
        {
            vars.productCode = productCode;
            vars.UpdatePointers();
        }
    });

    // Updates game values
    vars.UpdateValues = (Action) (() => {
        uint loadFlag = 0;
        memory.ReadValue<uint>(new IntPtr(vars.basePointer + vars.loadFlagAddress), out loadFlag);
        current.loadFlag = (vars.isBigEndian ? vars.SwapBytesInt(loadFlag) : loadFlag) == 1;

        current.areaCode = memory.ReadString(new IntPtr(vars.basePointer + vars.areaCodeAddress), 7);
        
        uint ocelotSpeechOverFlag = 0;
        memory.ReadValue<uint>(new IntPtr(vars.basePointer + vars.ocelotSpeechOverFlagAddress), out ocelotSpeechOverFlag);
        current.ocelotSpeechOverFlag = (vars.isBigEndian ? vars.SwapBytesInt(ocelotSpeechOverFlag) : ocelotSpeechOverFlag) == 1;
    });

    // Initialise values
    vars.UpdateProcess();
    vars.UpdatePointer();
    vars.UpdateProduct();
    vars.UpdateValues();
}

update
{
    vars.UpdateProcess();
    vars.UpdatePointer();
    vars.UpdateProduct();
    vars.UpdateValues();
}

isLoading
{
    return current.loadFlag;
}

start 
{
    return current.areaCode == "v000a_0" && !current.loadFlag;
}

reset
{
    return current.areaCode == "title";
}

split
{
    try
    {
        return (current.areaCode.Substring(0, 5) != old.areaCode.Substring(0, 5) && settings[old.areaCode]) || (current.areaCode == "ending" && !old.ocelotSpeechOverFlag && current.ocelotSpeechOverFlag);
    }
    catch
    {
        return false;
    }
}