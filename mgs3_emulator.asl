// MGS3 Load Remover
// Based on the Resident Evil/Biohazard: Code: Veronica Auto Splitter
// https://github.com/kapdap/re-cvx-autosplitter

state("pcsx2") {}

init
{
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
        bool loadFlag = false;

        // Read values from memory
        memory.ReadValue<bool>(new IntPtr(vars.basePointer + vars.loadFlagAddress), out loadFlag);

        current.loadFlag = loadFlag;
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