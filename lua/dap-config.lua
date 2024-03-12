local dap = require('dap')

-- cpp
dap.configurations.cpp = {
    {
        type = 'cppdbg',
        request = 'launch',
        name = 'Launch file',
        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb"
    }
}

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = 'OpenDebugAD7',
}
