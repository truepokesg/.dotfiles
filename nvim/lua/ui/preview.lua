-----------------------------------------------------------
-- Markdown Preview Keymaps & Integrations
-----------------------------------------------------------

local M = {}

function M.setup()
    -----------------------------------------------------------
    -- Glow (terminal Markdown renderer)
    -----------------------------------------------------------
    vim.keymap.set("n", "<leader>g", function()
        local file = vim.fn.expand("%")
        vim.cmd("vsplit | terminal glow " .. vim.fn.shellescape(file))
    end, { desc = "Preview markdown with glow (terminal)" })

    -----------------------------------------------------------
    -- Carbonyl (browser-in-terminal)
    -----------------------------------------------------------
    vim.keymap.set("n", "<leader>mp", function()
        vim.cmd("MarkdownPreview")

        vim.defer_fn(function()
            local url = vim.g.mkdp_preview_page_url or vim.g.mkdp_preview_page_url_backup
            if not url then
                print("Preview server not ready.")
                return
            end

            vim.cmd("vsplit | terminal carbonyl " .. url)
        end, 400)
    end, { desc = "Preview markdown inside Neovim via carbonyl" })

    -----------------------------------------------------------
    -- Optional W3M Preview (commented)
    -----------------------------------------------------------
    --[[
  local function open_w3m_preview()
    vim.cmd("MarkdownPreview")
    local url = vim.fn["mkdp#util#open_preview_page"]()

    if url == 0 then
      vim.wait(200, function()
        return vim.fn["mkdp#util#open_preview_page"]() ~= 0
      end)
      url = vim.fn["mkdp#util#open_preview_page"]()
    end

    vim.cmd("belowright vsplit")
    vim.cmd("terminal w3m " .. url)
    vim.cmd("startinsert")
  end

  vim.keymap.set("n", "<leader>mw", open_w3m_preview)
  ]]
end

return M
