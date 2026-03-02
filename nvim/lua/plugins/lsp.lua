return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    ------------------------------------------------------------------
    -- DIAGNOSTICS
    ------------------------------------------------------------------
    vim.diagnostic.config({
      virtual_text = false,
      signs = true,
      underline = true,
      severity_sort = true,
      update_in_insert = false,
      float = {
        border = "rounded",
        source = "if_many",
      },
    })

    ------------------------------------------------------------------
    -- ON_ATTACH
    ------------------------------------------------------------------
    local on_attach = function(_, bufnr)
      local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, {
          buffer = bufnr,
          silent = true,
          desc = desc,
        })
      end

      map("n", "gd", vim.lsp.buf.definition, "Go to definition")
      map("n", "gr", vim.lsp.buf.references, "Find references")
      map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
      map("n", "K", vim.lsp.buf.hover, "Hover documentation")

      map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
      map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")

      map("n", "<leader>d", vim.diagnostic.open_float, "Line diagnostics")
      map("n", "[d", function()
        vim.diagnostic.jump({ count = -1, float = true })
      end, "Previous diagnostic")
      map("n", "]d", function()
        vim.diagnostic.jump({ count = 1, float = true })
      end, "Next diagnostic")

      map("i", "<C-k>", vim.lsp.buf.signature_help, "Signature help")
    end

    ------------------------------------------------------------------
    -- CAPABILITIES
    ------------------------------------------------------------------
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    ------------------------------------------------------------------
    -- LSP CONFIG HELPER
    ------------------------------------------------------------------
    local lsp = vim.lsp.config

    ------------------------------------------------------------------
    -- LUA
    ------------------------------------------------------------------
    lsp("lua_ls", {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    })

    ------------------------------------------------------------------
    -- TYPESCRIPT / JAVASCRIPT  (YOUR CUSTOM BLOCK)
    ------------------------------------------------------------------
    lsp("ts_ls", {
      on_attach = on_attach,
      capabilities = capabilities,

      cmd = { "typescript-language-server", "--stdio" },

      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
      },

      root_markers = {
        "tsconfig.json",
        "jsconfig.json",
        "package.json",
        ".git",
      },

      single_file_support = true,

      init_options = {
        hostInfo = "neovim",
      },

      settings = {
        typescript = { suggest = { autoImports = true } },
        javascript = { suggest = { autoImports = true } },
      },
    })

    ------------------------------------------------------------------
    -- PYTHON
    ------------------------------------------------------------------
    lsp("pyright", {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            autoImportCompletions = true,
          },
        },
      },
    })

    ------------------------------------------------------------------
    -- WEB
    ------------------------------------------------------------------
    lsp("html", { on_attach = on_attach, capabilities = capabilities })
    lsp("cssls", { on_attach = on_attach, capabilities = capabilities })
    lsp("jsonls", { on_attach = on_attach, capabilities = capabilities })

    lsp("tailwindcss", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    ------------------------------------------------------------------
    -- C / C++
    ------------------------------------------------------------------
    lsp("clangd", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    ------------------------------------------------------------------
    -- JAVA
    ------------------------------------------------------------------
    lsp("jdtls", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    ------------------------------------------------------------------
    -- GO
    ------------------------------------------------------------------
    lsp("gopls", {
      on_attach = on_attach,
      capabilities = capabilities,
    })

    ------------------------------------------------------------------
    -- ENABLE SERVERS
    ------------------------------------------------------------------
    vim.lsp.enable({
      "lua_ls",
      "ts_ls",
      "pyright",
      "html",
      "cssls",
      "jsonls",
      "tailwindcss",
      "clangd",
      "jdtls",
      "gopls",
    })
  end,
}
