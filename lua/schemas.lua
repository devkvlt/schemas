local urls = {
  babelrc = 'https://json.schemastore.org/babelrc.json',
  clang_format = 'https://json.schemastore.org/clang-format.json',
  compose_spec = 'https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json',
  cspell = 'https://raw.githubusercontent.com/streetsidesoftware/cspell/main/packages/cspell-types/cspell.schema.json',
  dependabot = 'https://json.schemastore.org/dependabot.json',
  dependabot_v2 = 'https://json.schemastore.org/dependabot-2.0.json',
  docker_compose = 'https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json',
  eslintrc = 'https://json.schemastore.org/eslintrc.json',
  github_action = 'https://json.schemastore.org/github-action.json',
  github_funding = 'https://json.schemastore.org/github-funding.json',
  github_issue_config = 'https://json.schemastore.org/github-issue-config.json',
  github_issue_forms = 'https://json.schemastore.org/github-issue-forms.json',
  github_workflow = 'https://json.schemastore.org/github-workflow.json',
  github_workflow_template_properties = 'https://json.schemastore.org/github-workflow-template-properties.json',
  golangci_lint = 'https://json.schemastore.org/golangci-lint.json',
  markdownlint = 'https://raw.githubusercontent.com/DavidAnson/markdownlint/main/schema/markdownlint-config-schema.json',
  nodemon = 'https://json.schemastore.org/nodemon.json',
  package_json = 'https://json.schemastore.org/package.json',
  package_manifest = 'https://json.schemastore.org/package.manifest.json',
  postcssrc = 'https://json.schemastore.org/postcssrc.json',
  prettierrc = 'https://json.schemastore.org/prettierrc.json',
  stylelintrc = 'https://json.schemastore.org/stylelintrc.json',
  tsconfig = 'https://json.schemastore.org/tsconfig.json',
  vercel = 'https://openapi.vercel.sh/vercel.json',
  vscode_snippets = 'https://raw.githubusercontent.com/Yash-Singh1/vscode-snippets-json-schema/main/schema.json',
}

local M = {}

M.yaml = {
  schemas = {
    [urls.github_workflow] = '/.github/workflows/*',
    [urls.golangci_lint] = '/.golangci.yml',
    [urls.docker_compose] = '/docker-compose.yml',
  },
}

M.json = {
  {
    fileMatch = { 'snippets/*.json' },
    url = urls.vscode_snippets,
  },
  {
    fileMatch = { 'package.json' },
    url = urls.package_json,
  },
  {
    fileMatch = { 'tsconfig*.json' },
    url = urls.tsconfig,
  },
  {
    fileMatch = { '.prettierrc', '.prettierrc.json', 'prettier.config.json' },
    url = urls.prettierrc,
  },
  {
    fileMatch = { '.eslintrc', '.eslintrc.json' },
    url = urls.eslintrc,
  },
  {
    fileMatch = { '.babelrc', '.babelrc.json', 'babel.config.json' },
    url = urls.babelrc,
  },
  {
    fileMatch = { '.markdownlint.json' },
    url = urls.markdownlint,
  },
  {
    fileMatch = { '.stylelintrc', '.stylelintrc.json', 'stylelint.config.json' },
    url = urls.stylelintrc,
  },
}

return M
