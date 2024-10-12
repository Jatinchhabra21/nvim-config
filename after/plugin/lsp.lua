local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
    vim.keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
    vim.keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    vim.keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
    vim.keymap.set("n", "<leader>go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
    vim.keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
    vim.keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
    vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
    vim.keymap.set("n", "<leader>fd", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", opts)
    vim.keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
    vim.keymap.set("n", "<leader>g[", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
    vim.keymap.set("n", "<leader>g]", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)

    lsp_zero.buffer_autoformat()
end

lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

lsp_zero.ui({
    float_border = 'rounded',
    sign_text = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»',
    },
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<cr>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    completion = {
        completeopt = 'menu,menuone,preview,noselect',
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "buffer" },  -- text within current buffer
        { name = "path" },    -- file system paths
    }),
})
