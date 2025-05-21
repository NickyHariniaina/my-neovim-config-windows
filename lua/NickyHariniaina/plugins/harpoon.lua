
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2", -- utilise la version 2 !
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        local list = harpoon:list()

        -- Marquer un fichier (Shift+m)
        vim.keymap.set("n", "<S-m>", function()
            list:append()
        end, { desc = "Harpoon Mark File" })

        -- Ouvrir le menu (Tab)
        vim.keymap.set("n", "<TAB>", function()
            harpoon.ui:toggle_quick_menu(list)
        end, { desc = "Harpoon Toggle Menu" })

        -- Aller aux fichiers 1-4
        vim.keymap.set("n", "<leader>1", function() list:select(1) end, { desc = "Harpoon File 1" })
        vim.keymap.set("n", "<leader>2", function() list:select(2) end, { desc = "Harpoon File 2" })
        vim.keymap.set("n", "<leader>3", function() list:select(3) end, { desc = "Harpoon File 3" })
        vim.keymap.set("n", "<leader>4", function() list:select(4) end, { desc = "Harpoon File 4" })
    end
}
