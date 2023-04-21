local lsp_config_status_ok, lspconig = pcall(require, "lspconfig")
if not lsp_config_status_ok then
	return
end

lspconig.jsonnet_ls.setup{
	ext_vars = {
		foo = 'bar',
	},
	formatting = {
		-- default values
		Indent              = 2,
		MaxBlankLines       = 2,
		StringStyle         = 'single',
		CommentStyle        = 'slash',
		PrettyFieldNames    = true,
		PadArrays           = false,
		PadObjects          = true,
		SortImports         = true,
		UseImplicitPlus     = true,
		StripEverything     = false,
		StripComments       = false,
		StripAllButComments = false,
	},
}
